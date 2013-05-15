.class final Lcom/avast/android/antitheft_setup_components/b/c;
.super Ljava/lang/Object;
.source "EdifyBinaryHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/avast/android/antitheft_setup_components/b/e;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/avast/android/antitheft_setup_components/b/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/b/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/avast/android/antitheft_setup_components/b/c;->b:Lcom/avast/android/antitheft_setup_components/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/b/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/b/c;->b:Lcom/avast/android/antitheft_setup_components/b/e;

    invoke-static {v0, v1}, Lcom/avast/android/antitheft_setup_components/b/a;->a(Landroid/content/Context;Lcom/avast/android/antitheft_setup_components/b/e;)V

    .line 62
    return-void
.end method
