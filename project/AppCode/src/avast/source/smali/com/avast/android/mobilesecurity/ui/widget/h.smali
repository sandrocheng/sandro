.class Lcom/avast/android/mobilesecurity/ui/widget/h;
.super Ljava/lang/Object;
.source "DayButtonRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/h;->a:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const v7, 0x7f0c0379

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_7

    .line 77
    new-instance v2, Lcom/avast/android/mobilesecurity/ui/widget/i;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/ui/widget/i;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/h;)V

    .line 89
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/h;->a:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x7da

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/ui/widget/h;->a:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    invoke-static {v5}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a(Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 90
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/h;->a:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v7, v5

    move v4, v6

    :goto_0
    if-ge v4, v7, :cond_5

    aget-object v1, v5, v4

    .line 95
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 93
    :cond_0
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string v3, ".datepicker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 102
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    move v3, v6

    :goto_2
    if-ge v3, v9, :cond_0

    aget-object v2, v8, v3

    .line 107
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    .line 105
    :cond_2
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 111
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 113
    const-string v12, ".numberpicker"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "month"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "year"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 115
    :cond_4
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 118
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 143
    :catch_0
    move-exception v1

    .line 146
    :cond_5
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 165
    :goto_4
    return-void

    .line 121
    :cond_6
    :try_start_1
    const-string v3, ".dateformat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 124
    new-instance v2, Lcom/avast/android/mobilesecurity/ui/widget/j;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/ui/widget/j;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/h;)V

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 149
    :cond_7
    new-instance v2, Lcom/avast/android/mobilesecurity/ui/widget/k;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/ui/widget/k;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/h;)V

    .line 162
    new-instance v0, Lcom/avast/android/mobilesecurity/ui/widget/m;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/h;->a:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/widget/h;->a:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a(Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;)I

    move-result v3

    const/16 v5, 0x1c

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/ui/widget/h;->a:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    invoke-virtual {v6}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/avast/android/mobilesecurity/ui/widget/m;-><init>(Landroid/content/Context;Lcom/avast/android/mobilesecurity/ui/widget/n;IIILjava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/m;->show()V

    goto :goto_4
.end method
