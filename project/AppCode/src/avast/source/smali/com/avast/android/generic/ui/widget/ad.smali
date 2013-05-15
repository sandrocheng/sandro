.class Lcom/avast/android/generic/ui/widget/ad;
.super Ljava/lang/Object;
.source "TimeButtonRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/avast/android/generic/ui/widget/TimeButtonRow;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/widget/TimeButtonRow;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/ad;->b:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    iput-boolean p2, p0, Lcom/avast/android/generic/ui/widget/ad;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 69
    new-instance v2, Lcom/avast/android/generic/ui/widget/ae;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/ui/widget/ae;-><init>(Lcom/avast/android/generic/ui/widget/ad;)V

    .line 75
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/ad;->b:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/avast/android/generic/ui/widget/ad;->b:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    invoke-static {v3}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->a(Lcom/avast/android/generic/ui/widget/TimeButtonRow;)I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    iget-object v4, p0, Lcom/avast/android/generic/ui/widget/ad;->b:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    invoke-static {v4}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->a(Lcom/avast/android/generic/ui/widget/TimeButtonRow;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x3c

    iget-boolean v5, p0, Lcom/avast/android/generic/ui/widget/ad;->a:Z

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 78
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 79
    return-void
.end method
