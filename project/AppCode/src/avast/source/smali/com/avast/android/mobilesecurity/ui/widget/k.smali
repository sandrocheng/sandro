.class Lcom/avast/android/mobilesecurity/ui/widget/k;
.super Ljava/lang/Object;
.source "DayButtonRow.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/ui/widget/n;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/ui/widget/h;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/ui/widget/h;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/k;->a:Lcom/avast/android/mobilesecurity/ui/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/NumberPicker;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x1c

    const/4 v2, 0x1

    .line 153
    if-ge p2, v2, :cond_1

    move v1, v2

    .line 155
    :goto_0
    if-le v1, v0, :cond_0

    .line 157
    :goto_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/k;->a:Lcom/avast/android/mobilesecurity/ui/widget/h;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/ui/widget/h;->a:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    invoke-static {v1, v0, v2, v2}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a(Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;IZZ)V

    .line 158
    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p2

    goto :goto_0
.end method
