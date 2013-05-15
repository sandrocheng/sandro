.class Lcom/avast/android/generic/ui/widget/ae;
.super Ljava/lang/Object;
.source "TimeButtonRow.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/ad;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/widget/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/ae;->a:Lcom/avast/android/generic/ui/widget/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/ae;->a:Lcom/avast/android/generic/ui/widget/ad;

    iget-object v0, v0, Lcom/avast/android/generic/ui/widget/ad;->b:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    invoke-static {v0, v1, v2, v2}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->a(Lcom/avast/android/generic/ui/widget/TimeButtonRow;IZZ)V

    .line 73
    return-void
.end method
