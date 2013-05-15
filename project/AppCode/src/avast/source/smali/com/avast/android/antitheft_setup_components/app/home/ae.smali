.class Lcom/avast/android/antitheft_setup_components/app/home/ae;
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
    .line 240
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/ae;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ae;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root method, update-zip"

    const-string v3, "amend"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 245
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ae;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    sget-object v1, Lcom/avast/android/generic/util/am;->b:Lcom/avast/android/generic/util/am;

    sget-object v2, Lcom/avast/android/generic/util/o;->a:Lcom/avast/android/generic/util/o;

    invoke-static {v0, v1, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Lcom/avast/android/generic/util/am;Lcom/avast/android/generic/util/o;)V

    .line 247
    return-void
.end method
