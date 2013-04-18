.class public Lkdebug/KJniAssemble;
.super Ljava/lang/Object;
.source "KJniAssemble.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "KAssemble"

    invoke-static {v0}, Lcom/keniu/security/h/a;->a(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method


# virtual methods
.method public native GetFirstMultipart(Ljava/lang/String;)[B
.end method

.method public native GetFirstMultipart2(Ljava/lang/String;)[B
.end method

.method public native GetSign(Ljava/lang/String;)[B
.end method

.method public native GetSign2([Ljava/lang/String;Z)[Ljava/lang/Object;
.end method

.method public native GetSign3([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Z)[B
.end method

.method public native GetSign4([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;[Z)[B
.end method

.method public native dispHelloWorld()V
.end method
