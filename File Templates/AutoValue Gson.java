#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end

import com.google.auto.value.AutoValue;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;


@AutoValue
public abstract class ${NAME} {

    public static TypeAdapter<${NAME}> typeAdapter(Gson gson) {
        return new AutoValue_${NAME}.GsonTypeAdapter(gson);
    }
}