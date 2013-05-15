.class Lcom/avast/android/antitheft_setup_components/app/home/h;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/avast/android/antitheft_setup_components/app/home/f;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/f;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/h;->c:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iput p2, p0, Lcom/avast/android/antitheft_setup_components/app/home/h;->a:I

    iput p3, p0, Lcom/avast/android/antitheft_setup_components/app/home/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/h;->c:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/h;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/h;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/h;->c:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v1, v1, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v1}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/h;->c:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v1, v1, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v1}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->c(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
