cheerpjInit();
cheerpjRunJar("/app/JavaLite.jar");

const btn = document.getElementById("compile-button");
btn.addEventListener("click", onClick);

let compiledByteCode;
let hasRan = false;
const sessionState = JSON.parse(sessionStorage.getItem("sessionState"));

if (sessionState) {
  //if true, user tried compiling when we needed to reload, so refill the user-input and then proceed with onClick
  // remove the sessionState so that code doesn't run when user manually refreshes the page.
  document.getElementById("user-input").value = sessionState.codeString;
  onClick();
  sessionStorage.removeItem("sessionState");
}

async function onClick() {
  if (hasRan) {
    //true => we remember what the user wanted to compile, then refresh the page.
    sessionStorage.setItem(
      "sessionState",
      JSON.stringify({
        action: true,
        codeString: document.getElementById("user-input").value,
      })
    );
    document.getElementById("bytecode-output").value = "";
    document.getElementById("console-output").value = "";
    location.reload();
  } else {
    //false => initialise the compiler, then compile and run the code.
    const bcoArea = document.getElementById("bytecode-output");
    bcoArea.value = "Compiling...";
    const compiler = await cjNew("com.victorhubbers.javalite.Compiler");
    const codeString = document.getElementById("user-input").value;

    compiledByteCode = await cjCall(
      compiler,
      "compileString",
      codeString,
      "OnlineDemo"
    );

    if (!compiledByteCode) {
      bcoArea.classList.add("error");
      bcoArea.value = `Failed to compile. \n\nError:\n${cjStringJavaToJs(
        compiler.error1
      )}`;
    } else {
      bcoArea.classList.remove("error");
      bcoArea.value = prettifyStringArray(compiledByteCode.jasminCode0);
      run();
    }
  }
}

async function run() {
  // hasRan to true so that the environment will reload before the next run -- Cheerpj can only handle running the bytecode once
  hasRan = true;

  //Define the textarea and runner class
  const outputArea = document.getElementById("console-output");
  const runner = await cjNew("com.victorhubbers.javalite.OnlineRunner");
  outputArea.value = "Running OnlineDemo.jvl...";

  //Run the code and place the output in the textarea
  let output = await cjCall(runner, "run", compiledByteCode);
  if (prettifyStringArray(output).trim() === "") {
    outputArea.value =
      'No output. Include print statements like this:\n\nprint("HelloWorld")';
  } else {
    outputArea.value = prettifyStringArray(output);
  }
}

/**
 *
 * Function that takes a Java String Array and returns a multi-line JavaScript string
 *
 **/
function prettifyStringArray(array) {
  let string = "";
  for (let index = 1; index <= array.size2; index++) {
    string += `${cjStringJavaToJs(array.elementData1[index])}\n`;
  }
  return string;
}
