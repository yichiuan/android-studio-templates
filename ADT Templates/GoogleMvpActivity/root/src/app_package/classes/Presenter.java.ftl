package ${packageName};

import android.support.annotation.NonNull;


public class ${presenterClass} extends BasePresenter implements ${contractClass}.Presenter {
    
    private final ${contractClass}.View view;

    public ${presenterClass}(@NonNull ${contractClass}.View view) {
        this.view = view;
        view.setPresenter(this);
    }
}