.class Lcom/avast/android/mobilesecurity/ui/widget/j;
.super Ljava/text/DateFormat;
.source "DayButtonRow.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/ui/widget/h;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/ui/widget/h;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/j;->a:Lcom/avast/android/mobilesecurity/ui/widget/h;

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/j;->a:Lcom/avast/android/mobilesecurity/ui/widget/h;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/ui/widget/h;->a:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0379

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method
