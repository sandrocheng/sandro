.class public Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/q;
.super Lcom/avast/android/generic/ui/b/a;
.source "UninstallCheckProblemChecker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/avast/android/generic/ui/b/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/a/a;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/a/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    return-void
.end method
