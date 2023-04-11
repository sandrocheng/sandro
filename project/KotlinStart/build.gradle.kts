plugins {
    kotlin("jvm") version "1.8.0"
    application
}

group = "org.example"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()

//    maven { url 'https://maven.aliyun.com/repository/gradle-plugin'}
//    maven { url 'https://maven.aliyun.com/repository/public/'}
//    maven { url 'https://maven.aliyun.com/repository/google'}
//    maven { url 'https://maven.aliyun.com/repository/jcenter'}
//    maven { url 'http://mirrors.cloud.tencent.com/nexus/repository/maven-public/'}
//    maven { url 'https://maven.aliyun.com/repository/gradle-plugin'}
}

dependencies {
    testImplementation(kotlin("test"))
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