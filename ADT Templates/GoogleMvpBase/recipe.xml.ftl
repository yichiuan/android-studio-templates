<?xml version="1.0"?>
<recipe>
    <instantiate from="src/app_package/classes/BaseView.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/BaseView.java" />

    <instantiate from="src/app_package/classes/MvpPresenter.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/MvpPresenter.java" />

    <instantiate from="src/app_package/classes/BasePresenter.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/BasePresenter.java" />

    <open file="${escapeXmlAttribute(srcOut)}/BasePresenter.java" />
</recipe>
