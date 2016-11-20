package ${packageName};

import android.os.Bundle;
import ${superClassFqcn};

<#if applicationPackage??>import ${applicationPackage}.R;</#if>


public class ${activityClass} extends AppCompatActivity {
    private ${presenterClass} presenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

        ${fragmentClass} fragment =
                (${fragmentClass})getSupportFragmentManager().findFragmentById(R.id.content_frame);
        if (fragment == null) {
            fragment = ${fragmentClass}.newInstance();
            getSupportFragmentManager().beginTransaction()
                                       .add(R.id.content_frame, fragment)
                                       .commit();
        }

        presenter = new ${presenterClass}(fragment);
    }
}
