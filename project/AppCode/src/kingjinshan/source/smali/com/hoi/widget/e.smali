.class public final Lcom/hoi/widget/e;
.super Landroid/app/AlertDialog;
.source "BinaryPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/hoi/widget/c;


# static fields
.field private static final a:Ljava/lang/String; = "binary"

.field private static final b:Ljava/lang/String; = "binary_type"


# instance fields
.field private final c:Lcom/hoi/widget/c;

.field private final d:Lcom/hoi/widget/BinaryPicker;

.field private e:I

.field private f:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/hoi/widget/c;IILjava/lang/String;IIII[Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/hoi/widget/e;->c:Lcom/hoi/widget/c;

    .line 40
    iput p3, p0, Lcom/hoi/widget/e;->e:I

    .line 41
    iput p4, p0, Lcom/hoi/widget/e;->f:I

    .line 46
    invoke-virtual {p0, p5}, Lcom/hoi/widget/e;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f0b03a9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/hoi/widget/e;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 49
    const v0, 0x7f0b03aa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hoi/widget/e;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 53
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 55
    const v0, 0x7f030026

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/hoi/widget/e;->setView(Landroid/view/View;)V

    .line 57
    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hoi/widget/BinaryPicker;

    iput-object p1, p0, Lcom/hoi/widget/e;->d:Lcom/hoi/widget/BinaryPicker;

    .line 59
    iget-object v0, p0, Lcom/hoi/widget/e;->d:Lcom/hoi/widget/BinaryPicker;

    move v1, p6

    move v2, p7

    move v3, p8

    move v4, p9

    move-object/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/hoi/widget/BinaryPicker;->a(IIII[Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/hoi/widget/e;->d:Lcom/hoi/widget/BinaryPicker;

    iget v1, p0, Lcom/hoi/widget/e;->e:I

    iget v2, p0, Lcom/hoi/widget/e;->f:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/hoi/widget/BinaryPicker;->a(IILcom/hoi/widget/c;)V

    .line 61
    return-void
.end method

.method private a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/hoi/widget/e;->e:I

    .line 79
    iput p2, p0, Lcom/hoi/widget/e;->f:I

    .line 80
    iget-object v0, p0, Lcom/hoi/widget/e;->d:Lcom/hoi/widget/BinaryPicker;

    iget v1, p0, Lcom/hoi/widget/e;->e:I

    iget v2, p0, Lcom/hoi/widget/e;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/hoi/widget/BinaryPicker;->a(II)V

    .line 81
    return-void
.end method

.method private a(IIII[Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hoi/widget/e;->d:Lcom/hoi/widget/BinaryPicker;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/hoi/widget/BinaryPicker;->a(IIII[Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/hoi/widget/e;->c:Lcom/hoi/widget/c;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/hoi/widget/e;->d:Lcom/hoi/widget/BinaryPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/BinaryPicker;->clearFocus()V

    .line 72
    iget-object v0, p0, Lcom/hoi/widget/e;->c:Lcom/hoi/widget/c;

    iget-object v0, p0, Lcom/hoi/widget/e;->d:Lcom/hoi/widget/BinaryPicker;

    iget-object v0, p0, Lcom/hoi/widget/e;->d:Lcom/hoi/widget/BinaryPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/BinaryPicker;->a()I

    iget-object v0, p0, Lcom/hoi/widget/e;->d:Lcom/hoi/widget/BinaryPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/BinaryPicker;->b()I

    .line 75
    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 103
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 104
    const-string v1, "binary_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 105
    iget-object v2, p0, Lcom/hoi/widget/e;->d:Lcom/hoi/widget/BinaryPicker;

    invoke-virtual {v2, v0, v1, p0}, Lcom/hoi/widget/BinaryPicker;->a(IILcom/hoi/widget/c;)V

    .line 107
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    const-string v1, "binary"

    iget-object v2, p0, Lcom/hoi/widget/e;->d:Lcom/hoi/widget/BinaryPicker;

    invoke-virtual {v2}, Lcom/hoi/widget/BinaryPicker;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string v1, "binary_type"

    iget-object v2, p0, Lcom/hoi/widget/e;->d:Lcom/hoi/widget/BinaryPicker;

    invoke-virtual {v2}, Lcom/hoi/widget/BinaryPicker;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    return-object v0
.end method

.method public final show()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 66
    return-void
.end method
