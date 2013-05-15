.class public Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "RootFinishedFragment.java"


# instance fields
.field private a:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "/ms/antiTheftUninstall/rootFinished"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    const v0, 0x7f030059

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 29
    const v0, 0x7f0700c9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedFragment;->a:Landroid/widget/Button;

    .line 30
    const v0, 0x7f070139

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    const v1, 0x7f07013a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 33
    const v3, 0x7f0c03e6

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-static {}, Lcom/avast/android/mobilesecurity/Application;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const v0, 0x7f0c03e7

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedFragment;->a:Landroid/widget/Button;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/a;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/a;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-object v2

    .line 37
    :cond_0
    const v0, 0x7f0c03e8

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
