.class Lcom/avast/android/antitheft_setup_components/app/home/v;
.super Ljava/lang/Object;
.source "RootMethodFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/v;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/v;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root method, update-zip, direct write failed"

    const-string v3, "continue"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 390
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/v;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->c(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    .line 391
    return-void
.end method
