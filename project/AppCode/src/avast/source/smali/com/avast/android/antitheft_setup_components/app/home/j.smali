.class Lcom/avast/android/antitheft_setup_components/app/home/j;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/i;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/i;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/j;->a:Lcom/avast/android/antitheft_setup_components/app/home/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/j;->a:Lcom/avast/android/antitheft_setup_components/app/home/i;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->g(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)V

    .line 319
    return-void
.end method
