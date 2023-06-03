plugins {
    kotlin("jvm") version "1.8.0"
    application
}

group = "org.example"
version = "1.0-SNAPSHOT"

repositories {
    maven { setUrl ("https://maven.aliyun.com/repository/gradle-plugin") }
    maven { setUrl ("https://maven.aliyun.com/repository/public/") }
    maven { setUrl ("https://maven.aliyun.com/repository/google")}
    maven { setUrl ("https://maven.aliyun.com/repository/jcenter") }
    maven { setUrl ("http://mirrors.cloud.tencent.com/nexus/repository/maven-public/")}
    maven { setUrl ("https://maven.aliyun.com/repository/gradle-plugin")}
    mavenCentral()
}

dependencies {
    testImplementation(kotlin("test"))
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.7.1")
}



tasks.test {
    useJUnitPlatform()
}

kotlin {
    jvmToolchain(8)
}

application {
    mainClass.set("MainKt")
}