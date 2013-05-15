.class abstract Lcom/avast/android/mobilesecurity/app/fileshield/n;
.super Ljava/lang/Object;
.source "FileShieldService.java"


# instance fields
.field private final a:Lcom/avast/android/mobilesecurity/app/fileshield/o;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Lcom/avast/android/mobilesecurity/app/fileshield/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/n;->b:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/n;->a:Lcom/avast/android/mobilesecurity/app/fileshield/o;

    .line 969
    return-void
.end method


# virtual methods
.method public b()Lcom/avast/android/mobilesecurity/app/fileshield/o;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/n;->a:Lcom/avast/android/mobilesecurity/app/fileshield/o;

    return-object v0
.end method
