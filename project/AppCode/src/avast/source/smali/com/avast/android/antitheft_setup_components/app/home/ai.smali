.class public Lcom/avast/android/antitheft_setup_components/app/home/ai;
.super Lcom/avast/android/generic/ui/b/a;
.source "SetupCheckProblemChecker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/avast/android/generic/ui/b/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {p1}, Lcom/avast/android/antitheft_setup_components/app/home/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/avast/android/antitheft_setup_components/app/home/b/a;

    invoke-direct {v0}, Lcom/avast/android/antitheft_setup_components/app/home/b/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    invoke-static {p1}, Lcom/avast/android/antitheft_setup_components/app/home/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lcom/avast/android/antitheft_setup_components/app/home/b/c;

    invoke-direct {v0}, Lcom/avast/android/antitheft_setup_components/app/home/b/c;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_1
    invoke-static {p1}, Lcom/avast/android/antitheft_setup_components/app/home/b/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    new-instance v0, Lcom/avast/android/antitheft_setup_components/app/home/b/b;

    invoke-direct {v0}, Lcom/avast/android/antitheft_setup_components/app/home/b/b;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_2
    return-void
.end method
