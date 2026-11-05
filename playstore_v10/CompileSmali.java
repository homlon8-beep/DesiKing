import brut.androlib.smali.SmaliBuilder;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.writer.builder.DexBuilder;
import com.android.tools.smali.dexlib2.writer.io.FileDataStore;
import java.io.File;
import java.nio.file.Files;

public class CompileSmali {
    public static void main(String[] args) throws Exception {
        File smaliDir = new File(args[0]);
        File outDex = new File(args[1]);
        int api = args.length > 2 ? Integer.parseInt(args[2]) : 26;
        
        SmaliBuilder smaliBuilder = new SmaliBuilder(api);
        DexBuilder dexBuilder = new DexBuilder(new Opcodes(api));
        
        Files.walk(smaliDir.toPath())
            .filter(p -> p.toString().endsWith(".smali"))
            .forEach(p -> {
                try {
                    smaliBuilder.buildFile(p.toFile(), dexBuilder);
                } catch (Exception e) {
                    throw new RuntimeException("Failed to smali " + p, e);
                }
            });
            
        dexBuilder.writeTo(new FileDataStore(outDex));
        System.out.println("Successfully compiled " + smaliDir + " -> " + outDex + " (" + outDex.length() + " bytes)");
    }
}
