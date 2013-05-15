.class final Lcom/avast/android/antitheft_setup_components/b/b;
.super Ljava/lang/Object;
.source "EdifyBinaryHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/b/e;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/b/e;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/b/b;->a:Lcom/avast/android/antitheft_setup_components/b/e;

    iput-object p2, p0, Lcom/avast/android/antitheft_setup_components/b/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    if-nez p2, :cond_0

    .line 41
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/b/b;->a:Lcom/avast/android/antitheft_setup_components/b/e;

    sget-object v1, Lcom/avast/android/generic/util/o;->c:Lcom/avast/android/generic/util/o;

    invoke-interface {v0, v1}, Lcom/avast/android/antitheft_setup_components/b/e;->a(Lcom/avast/android/generic/util/o;)V

    .line 52
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/b/b;->a:Lcom/avast/android/antitheft_setup_components/b/e;

    sget-object v1, Lcom/avast/android/generic/util/o;->b:Lcom/avast/android/generic/util/o;

    invoke-interface {v0, v1}, Lcom/avast/android/antitheft_setup_components/b/e;->a(Lcom/avast/android/generic/util/o;)V

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/b/b;->a:Lcom/avast/android/antitheft_setup_components/b/e;

    sget-object v1, Lcom/avast/android/generic/util/o;->a:Lcom/avast/android/generic/util/o;

    invoke-interface {v0, v1}, Lcom/avast/android/antitheft_setup_components/b/e;->a(Lcom/avast/android/generic/util/o;)V

    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/b/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/b/b;->a:Lcom/avast/android/antitheft_setup_components/b/e;

    invoke-static {v0, v1}, Lcom/avast/android/antitheft_setup_components/b/a;->b(Landroid/content/Context;Lcom/avast/android/antitheft_setup_components/b/e;)V

    goto :goto_0
.end method
