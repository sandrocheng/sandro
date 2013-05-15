.class Lcom/avast/android/generic/ui/b/e;
.super Ljava/lang/Object;
.source "ProblemCheckerRowResource.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/b/d;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/b/d;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/avast/android/generic/ui/b/e;->a:Lcom/avast/android/generic/ui/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 206
    return-void
.end method
