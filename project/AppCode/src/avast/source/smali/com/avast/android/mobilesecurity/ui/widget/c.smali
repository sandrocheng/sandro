.class Lcom/avast/android/mobilesecurity/ui/widget/c;
.super Ljava/lang/Object;
.source "ButtonRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/c;->a:Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/c;->a:Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->performClick()Z

    .line 59
    return-void
.end method
