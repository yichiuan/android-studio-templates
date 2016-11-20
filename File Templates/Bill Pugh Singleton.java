#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end

public class ${NAME} {

    // Private constructor prevents instantiation from other classes
    private ${NAME}() {}
    
    // SingletonHolder is loaded on the first execution of ${NAME}.getInstance() 
    // or the first access to SingletonHolder.INSTANCE, not before.
    private static class SingletonHolder {
        private static final ${NAME} INSTANCE = new ${NAME}();
    }

    public static ${NAME} getInstance() {
        return SingletonHolder.INSTANCE;
    }
}