.class Lcom/avast/android/antitheft_setup_components/app/home/t;
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
    .line 359
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/t;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/t;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root method, update-zip, zip backup failed"

    const-string v3, "continue"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 364
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/t;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->c(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    .line 365
    return-void
.end method
