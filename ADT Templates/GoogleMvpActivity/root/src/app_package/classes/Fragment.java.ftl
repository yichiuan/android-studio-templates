package ${packageName};

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


public class ${fragmentClass} extends Fragment implements ${contractClass}.View {
    private ${contractClass}.Presenter presenter;

    public static ${fragmentClass} newInstance() {
        ${fragmentClass} fragment = new ${fragmentClass}();
        return fragment;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.${contentLayoutName}, container, false);
        return root;
    }

    @Override
    public void onStart() {
        super.onStart();
        presenter.subscribe();
    }

    @Override
    public void onStop() {
        presenter.unsubscribe();
        super.onStop();
    }

    @Override
    public void setPresenter(${contractClass}.Presenter presenter) {
        this.presenter = presenter;
    }

}