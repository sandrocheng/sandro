.class Lcom/avast/android/antitheft_setup_components/app/home/q;
.super Ljava/lang/Object;
.source "RootFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/q;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/q;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root mode"

    const-string v3, "cancel"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 74
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/q;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;

    invoke-static {v0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 75
    return-void
.end method
