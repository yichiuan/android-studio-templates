package ${packageName};


public class ${presenterClass} extends BasePresenter implements ${contractClass}.Presenter {
    private final ${contractClass}.View view;

    public ${presenterClass}(${contractClass}.View view) {
        this.view = view;
        view.setPresenter(this);
    }
}