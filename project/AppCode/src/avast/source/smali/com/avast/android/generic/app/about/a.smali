.class Lcom/avast/android/generic/app/about/a;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/avast/android/generic/app/about/AboutFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/about/AboutFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/avast/android/generic/app/about/a;->b:Lcom/avast/android/generic/app/about/AboutFragment;

    iput-object p2, p0, Lcom/avast/android/generic/app/about/a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/avast/android/generic/app/about/a;->b:Lcom/avast/android/generic/app/about/AboutFragment;

    iget-object v1, p0, Lcom/avast/android/generic/app/about/a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/about/AboutFragment;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
