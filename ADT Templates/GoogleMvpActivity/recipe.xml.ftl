<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <instantiate from="src/app_package/layout/activity_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="src/app_package/layout/fragment_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${contentLayoutName}.xml" />

    <instantiate from="src/app_package/classes/Activity.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="src/app_package/classes/Fragment.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.java" />

    <instantiate from="src/app_package/classes/Contract.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${contractClass}.java" />

    <instantiate from="src/app_package/classes/Presenter.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${presenterClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${contractClass}.java" />
</recipe>
