.class final Lcom/avast/android/mobilesecurity/app/fileshield/s;
.super Lcom/avast/android/mobilesecurity/app/fileshield/n;
.source "FileShieldService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/s;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    .line 1115
    sget-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/o;->c:Lcom/avast/android/mobilesecurity/app/fileshield/o;

    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/app/fileshield/n;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Lcom/avast/android/mobilesecurity/app/fileshield/o;)V

    .line 1116
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter(s) can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1119
    :cond_1
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/s;->c:Ljava/lang/String;

    .line 1120
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/fileshield/s;->d:Ljava/lang/String;

    .line 1121
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/s;->d:Ljava/lang/String;

    return-object v0
.end method
