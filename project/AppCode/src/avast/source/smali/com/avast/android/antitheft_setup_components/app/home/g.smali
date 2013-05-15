.class Lcom/avast/android/antitheft_setup_components/app/home/g;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/f;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/f;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/g;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/g;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/g;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->b(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/g;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v1, v1, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->L:I

    invoke-virtual {v1, v2}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
