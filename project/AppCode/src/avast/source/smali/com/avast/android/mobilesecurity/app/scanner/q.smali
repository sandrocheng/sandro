.class Lcom/avast/android/mobilesecurity/app/scanner/q;
.super Ljava/lang/Object;
.source "ScanResultHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/scanner/o;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/o;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/q;->a:Lcom/avast/android/mobilesecurity/app/scanner/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/q;->a:Lcom/avast/android/mobilesecurity/app/scanner/o;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Lcom/avast/android/mobilesecurity/app/scanner/o;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/notification/j;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    const-wide/32 v1, 0x7f0b000e

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/notification/j;->a(J)V

    .line 311
    return-void
.end method
