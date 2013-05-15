.class Lcom/avast/android/mobilesecurity/app/home/c;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/home/c;->a:Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    .line 100
    const/high16 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setDescendantFocusability(I)V

    .line 101
    const v0, 0x7f0701ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/high16 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setDescendantFocusability(I)V

    .line 106
    invoke-virtual {p1}, Landroid/widget/AdapterView;->requestFocus()Z

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    const/high16 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setDescendantFocusability(I)V

    .line 118
    return-void
.end method
