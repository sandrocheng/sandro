.class public Lcom/avg/widget/model/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/avg/widget/model/a;->a:I

    iput p2, p0, Lcom/avg/widget/model/a;->b:I

    iput p3, p0, Lcom/avg/widget/model/a;->c:I

    iput p4, p0, Lcom/avg/widget/model/a;->d:I

    iput p5, p0, Lcom/avg/widget/model/a;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/avg/widget/model/a;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/avg/widget/model/a;->e:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/avg/widget/model/a;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/avg/widget/model/a;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/avg/widget/model/a;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/avg/widget/model/a;->d:I

    return v0
.end method
