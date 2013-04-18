.class public final Lcom/hoi/widget/af;
.super Landroid/app/AlertDialog;
.source "PeriodPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/hoi/widget/ad;


# static fields
.field private static final a:Ljava/lang/String; = "period"

.field private static final b:Ljava/lang/String; = "period_type"


# instance fields
.field private final c:[Ljava/lang/String;

.field private final d:Lcom/hoi/widget/ad;

.field private final e:Lcom/hoi/widget/PeriodPicker;

.field private f:I

.field private g:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/hoi/widget/ad;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/hoi/widget/af;->d:Lcom/hoi/widget/ad;

    .line 32
    iput p3, p0, Lcom/hoi/widget/af;->f:I

    .line 33
    iput p4, p0, Lcom/hoi/widget/af;->g:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hoi/widget/af;->c:[Ljava/lang/String;

    .line 37
    iget v0, p0, Lcom/hoi/widget/af;->f:I

    iget v1, p0, Lcom/hoi/widget/af;->g:I

    invoke-direct {p0, v0, v1}, Lcom/hoi/widget/af;->c(II)V

    .line 39
    const v0, 0x7f0b03a9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/hoi/widget/af;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 40
    const v0, 0x7f0b03aa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/hoi/widget/af;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    const v1, 0x7f0300d2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/hoi/widget/af;->setView(Landroid/view/View;)V

    .line 48
    const v1, 0x7f080311

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/PeriodPicker;

    iput-object v0, p0, Lcom/hoi/widget/af;->e:Lcom/hoi/widget/PeriodPicker;

    .line 49
    iget-object v0, p0, Lcom/hoi/widget/af;->e:Lcom/hoi/widget/PeriodPicker;

    iget v1, p0, Lcom/hoi/widget/af;->f:I

    iget v2, p0, Lcom/hoi/widget/af;->g:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/hoi/widget/PeriodPicker;->a(IILcom/hoi/widget/ad;)V

    .line 50
    return-void
.end method

.method private b(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/hoi/widget/af;->f:I

    .line 68
    iput p2, p0, Lcom/hoi/widget/af;->g:I

    .line 69
    iget-object v0, p0, Lcom/hoi/widget/af;->e:Lcom/hoi/widget/PeriodPicker;

    iget v1, p0, Lcom/hoi/widget/af;->f:I

    iget v2, p0, Lcom/hoi/widget/af;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/hoi/widget/PeriodPicker;->a(II)V

    .line 70
    return-void
.end method

.method private c(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hoi/widget/af;->c:[Ljava/lang/String;

    const/4 v2, 0x1

    sub-int v2, p2, v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hoi/widget/af;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/hoi/widget/af;->c(II)V

    .line 79
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/hoi/widget/af;->d:Lcom/hoi/widget/ad;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/hoi/widget/af;->e:Lcom/hoi/widget/PeriodPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/PeriodPicker;->clearFocus()V

    .line 61
    iget-object v0, p0, Lcom/hoi/widget/af;->d:Lcom/hoi/widget/ad;

    iget-object v1, p0, Lcom/hoi/widget/af;->e:Lcom/hoi/widget/PeriodPicker;

    iget-object v1, p0, Lcom/hoi/widget/af;->e:Lcom/hoi/widget/PeriodPicker;

    invoke-virtual {v1}, Lcom/hoi/widget/PeriodPicker;->a()I

    move-result v1

    iget-object v2, p0, Lcom/hoi/widget/af;->e:Lcom/hoi/widget/PeriodPicker;

    invoke-virtual {v2}, Lcom/hoi/widget/PeriodPicker;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/hoi/widget/ad;->a(II)V

    .line 64
    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 92
    const-string v0, "period"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    const-string v1, "period_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 94
    iget-object v2, p0, Lcom/hoi/widget/af;->e:Lcom/hoi/widget/PeriodPicker;

    invoke-virtual {v2, v0, v1, p0}, Lcom/hoi/widget/PeriodPicker;->a(IILcom/hoi/widget/ad;)V

    .line 95
    invoke-direct {p0, v0, v1}, Lcom/hoi/widget/af;->c(II)V

    .line 96
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    const-string v1, "period"

    iget-object v2, p0, Lcom/hoi/widget/af;->e:Lcom/hoi/widget/PeriodPicker;

    invoke-virtual {v2}, Lcom/hoi/widget/PeriodPicker;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v1, "period_type"

    iget-object v2, p0, Lcom/hoi/widget/af;->e:Lcom/hoi/widget/PeriodPicker;

    invoke-virtual {v2}, Lcom/hoi/widget/PeriodPicker;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    return-object v0
.end method

.method public final show()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 55
    return-void
.end method
