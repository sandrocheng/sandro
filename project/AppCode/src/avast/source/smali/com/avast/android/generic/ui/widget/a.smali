.class Lcom/avast/android/generic/ui/widget/a;
.super Ljava/lang/Object;
.source "CheckBoxRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/a;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/a;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 93
    return-void
.end method
