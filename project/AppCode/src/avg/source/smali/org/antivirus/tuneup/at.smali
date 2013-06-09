.class public final Lorg/antivirus/tuneup/at;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field a:Z

.field b:Z

.field private c:[Ljava/lang/String;

.field private d:Landroid/view/LayoutInflater;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x109000f

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object p3, p0, Lorg/antivirus/tuneup/at;->c:[Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/tuneup/at;->d:Landroid/view/LayoutInflater;

    iput p2, p0, Lorg/antivirus/tuneup/at;->e:I

    iput-boolean v2, p0, Lorg/antivirus/tuneup/at;->a:Z

    iput-boolean v2, p0, Lorg/antivirus/tuneup/at;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/antivirus/tuneup/at;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-boolean v0, p0, Lorg/antivirus/tuneup/at;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/tuneup/at;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/antivirus/tuneup/at;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-boolean v0, p0, Lorg/antivirus/tuneup/at;->a:Z

    iput-boolean v0, p0, Lorg/antivirus/tuneup/at;->b:Z

    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/at;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/at;->c:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/at;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/at;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/16 v5, 0xb

    const/16 v4, 0x8

    const/4 v3, 0x0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v5, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-nez p2, :cond_3

    iget-object v0, p0, Lorg/antivirus/tuneup/at;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lorg/antivirus/tuneup/au;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/au;-><init>(Lorg/antivirus/tuneup/at;)V

    const v0, 0x7f080086

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/tuneup/au;->a:Landroid/widget/TextView;

    const v0, 0x7f080087

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lorg/antivirus/tuneup/au;->b:Landroid/widget/RadioButton;

    const v0, 0x7f080047

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lorg/antivirus/tuneup/au;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_1
    iget-object v1, v0, Lorg/antivirus/tuneup/au;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/antivirus/tuneup/at;->c:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/antivirus/tuneup/au;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v1, p0, Lorg/antivirus/tuneup/at;->a:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/antivirus/tuneup/au;->b:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget v1, p0, Lorg/antivirus/tuneup/at;->e:I

    if-ne p1, v1, :cond_2

    iget-object v1, v0, Lorg/antivirus/tuneup/au;->b:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    :goto_2
    iget-boolean v1, p0, Lorg/antivirus/tuneup/at;->b:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v5, :cond_0

    iget-object v0, v0, Lorg/antivirus/tuneup/au;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/au;

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lorg/antivirus/tuneup/au;->b:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
