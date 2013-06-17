.class public Lcom/avg/ui/general/b/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected c:Z

.field protected d:I

.field protected e:I

.field protected f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/ui/general/b/a;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/avg/ui/general/b/a;->f:I

    invoke-static {p1}, Lcom/avg/ui/general/c/i;->a(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v0, 0xa

    div-int/lit16 v1, v1, 0xa0

    iput v1, p0, Lcom/avg/ui/general/b/a;->d:I

    mul-int/lit8 v0, v0, 0xf

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/avg/ui/general/b/a;->e:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/avg/ui/general/b/a;->c:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
