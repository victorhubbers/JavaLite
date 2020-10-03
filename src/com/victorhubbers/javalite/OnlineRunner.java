package com.victorhubbers.javalite;

import com.victorhubbers.javalite.exceptions.AssembleException;

import java.io.IOException;
import java.util.List;

public class OnlineRunner {

    public List<String> run(JasminBytecode bytecode) {
        try {
            AssembledClass classFile = AssembledClass.assemble(bytecode);
            SandBox sandBox = new SandBox();
            sandBox.runClass(classFile);
            return sandBox.getOutput();
        } catch (IOException |
                AssembleException e) {
            e.printStackTrace();
            return null;
        }
    }
}