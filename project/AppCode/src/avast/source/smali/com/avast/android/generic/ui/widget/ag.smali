.class Lcom/avast/android/generic/ui/widget/ag;
.super Ljava/lang/Object;
.source "WeekDaysRow.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/WeekDaysRow;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/widget/WeekDaysRow;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/ag;->a:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/ag;->a:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    invoke-static {v1}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a(Lcom/avast/android/generic/ui/widget/WeekDaysRow;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    .line 129
    :goto_1
    const/4 v3, 0x7

    if-ge v1, v3, :cond_3

    .line 130
    iget-object v3, p0, Lcom/avast/android/generic/ui/widget/ag;->a:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    invoke-static {v3}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->b(Lcom/avast/android/generic/ui/widget/WeekDaysRow;)[Landroid/widget/ToggleButton;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    add-int/2addr v0, v2

    .line 133
    :cond_2
    mul-int/lit8 v2, v2, 0x2

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/ag;->a:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/ag;->a:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    iget-object v2, v2, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/generic/d;->b(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/avast/android/generic/d/e;->a(Ljava/lang/String;I)Z

    .line 136
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/ag;->a:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    invoke-static {v1, v0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a(Lcom/avast/android/generic/ui/widget/WeekDaysRow;I)I

    .line 137
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/ag;->a:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    invoke-static {v1}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->c(Lcom/avast/android/generic/ui/widget/WeekDaysRow;)Lcom/avast/android/generic/ui/widget/ah;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/ag;->a:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    invoke-static {v1}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->c(Lcom/avast/android/generic/ui/widget/WeekDaysRow;)Lcom/avast/android/generic/ui/widget/ah;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/ag;->a:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    invoke-interface {v1, v2, v0}, Lcom/avast/android/generic/ui/widget/ah;->a(Lcom/avast/android/generic/ui/widget/WeekDaysRow;I)V

    goto :goto_0
.end method
