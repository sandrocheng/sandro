.class Lcom/avast/android/generic/ui/widget/g;
.super Ljava/lang/Object;
.source "EditTextRow.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/EditTextRow;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/widget/EditTextRow;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/g;->a:Lcom/avast/android/generic/ui/widget/EditTextRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    if-nez p2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/g;->a:Lcom/avast/android/generic/ui/widget/EditTextRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->c()Z

    .line 83
    :cond_0
    return-void
.end method
