.class Lcom/avast/android/antitheft_setup_components/app/home/e;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/e;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/e;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "download"

    const-string v3, "cancel"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 81
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/e;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 82
    return-void
.end method
