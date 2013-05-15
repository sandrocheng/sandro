.class public abstract Lcom/avast/android/generic/ui/BaseMultiPaneActivity;
.super Lcom/avast/android/generic/ui/BaseActivity;
.source "BaseMultiPaneActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseActivity;-><init>()V

    .line 128
    return-void
.end method

.method private a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    instance-of v0, p2, Lcom/avast/android/generic/ui/af;

    if-eqz v0, :cond_0

    .line 90
    check-cast p2, Lcom/avast/android/generic/ui/af;

    invoke-interface {p2}, Lcom/avast/android/generic/ui/af;->a_()I

    move-result v0

    .line 91
    if-lez v0, :cond_0

    .line 92
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;

    .line 95
    :cond_0
    const-string v0, "titleResourceId"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 96
    if-lez v0, :cond_2

    .line 97
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    const-string v0, "title"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/avast/android/generic/ui/a;
    .locals 1
    .parameter

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 43
    const/high16 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 46
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->a(Ljava/lang/String;)Lcom/avast/android/generic/ui/a;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    invoke-static {p1}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->b(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v3

    .line 49
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 52
    :try_start_0
    invoke-virtual {v2}, Lcom/avast/android/generic/ui/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 57
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 61
    :cond_1
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 64
    invoke-virtual {v2}, Lcom/avast/android/generic/ui/a;->c()I

    move-result v5

    invoke-virtual {v2}, Lcom/avast/android/generic/ui/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 65
    invoke-direct {p0, v1, v0, v3}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0, v4, v1, v0}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;)V

    .line 68
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error creating new fragment."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error creating new fragment."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 79
    :cond_2
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    return-void
.end method
