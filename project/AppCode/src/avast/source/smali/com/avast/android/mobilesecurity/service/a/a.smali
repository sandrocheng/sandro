.class public Lcom/avast/android/mobilesecurity/service/a/a;
.super Lcom/avast/android/generic/b/w;
.source "SetMobileSecurityCommandHandler.java"


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/service/CentralService;Lcom/avast/android/generic/b/h;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/b/w;-><init>(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/b/h;Z)V

    .line 13
    return-void
.end method


# virtual methods
.method protected a(Lcom/avast/android/generic/ae;ZLcom/avast/android/generic/b/z;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
