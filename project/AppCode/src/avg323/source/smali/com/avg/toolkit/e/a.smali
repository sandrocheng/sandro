.class public Lcom/avg/toolkit/e/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/avg/toolkit/e/b;

.field public final b:Lcom/avg/toolkit/e/c;

.field public final c:Lcom/avg/toolkit/e/c;

.field public final d:Lcom/avg/toolkit/e/c;

.field public final e:Lcom/avg/toolkit/e/c;

.field public final f:Lcom/avg/toolkit/e/c;

.field public final g:Lcom/avg/toolkit/e/c;

.field public final h:Lcom/avg/toolkit/e/c;

.field public final i:Lcom/avg/toolkit/e/c;

.field public final j:Lcom/avg/toolkit/e/c;

.field public final k:Lcom/avg/toolkit/e/d;

.field public final l:Z

.field public final m:Z

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Z


# direct methods
.method public constructor <init>(ILcom/avg/toolkit/e/b;Lcom/avg/toolkit/e/b;IILcom/avg/toolkit/e/d;Z)V
    .locals 7

    const/16 v6, 0x14c

    const/16 v5, 0x12d

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ne p5, v5, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/avg/toolkit/e/a;->l:Z

    iput-object p2, p0, Lcom/avg/toolkit/e/a;->a:Lcom/avg/toolkit/e/b;

    iput-object p6, p0, Lcom/avg/toolkit/e/a;->k:Lcom/avg/toolkit/e/d;

    iput p4, p0, Lcom/avg/toolkit/e/a;->n:I

    iput p5, p0, Lcom/avg/toolkit/e/a;->o:I

    iput p1, p0, Lcom/avg/toolkit/e/a;->p:I

    sget-object v0, Lcom/avg/toolkit/e/b;->c:Lcom/avg/toolkit/e/b;

    if-ne p3, v0, :cond_5

    sget-object v0, Lcom/avg/toolkit/e/c;->b:Lcom/avg/toolkit/e/c;

    :goto_1
    iget v3, p0, Lcom/avg/toolkit/e/a;->n:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/avg/toolkit/e/a;->a:Lcom/avg/toolkit/e/b;

    sget-object v4, Lcom/avg/toolkit/e/b;->c:Lcom/avg/toolkit/e/b;

    if-ne v3, v4, :cond_0

    sget-object v0, Lcom/avg/toolkit/e/c;->c:Lcom/avg/toolkit/e/c;

    :cond_0
    iput-object v0, p0, Lcom/avg/toolkit/e/a;->b:Lcom/avg/toolkit/e/c;

    iput-object v0, p0, Lcom/avg/toolkit/e/a;->c:Lcom/avg/toolkit/e/c;

    iput-object v0, p0, Lcom/avg/toolkit/e/a;->d:Lcom/avg/toolkit/e/c;

    iput-object v0, p0, Lcom/avg/toolkit/e/a;->e:Lcom/avg/toolkit/e/c;

    iput-object v0, p0, Lcom/avg/toolkit/e/a;->f:Lcom/avg/toolkit/e/c;

    sget-object v0, Lcom/avg/toolkit/e/b;->c:Lcom/avg/toolkit/e/b;

    if-eq p3, v0, :cond_1

    sget-object v0, Lcom/avg/toolkit/e/b;->b:Lcom/avg/toolkit/e/b;

    if-ne p3, v0, :cond_6

    :cond_1
    sget-object v0, Lcom/avg/toolkit/e/c;->b:Lcom/avg/toolkit/e/c;

    :goto_2
    iget v3, p0, Lcom/avg/toolkit/e/a;->n:I

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/avg/toolkit/e/a;->a:Lcom/avg/toolkit/e/b;

    sget-object v4, Lcom/avg/toolkit/e/b;->c:Lcom/avg/toolkit/e/b;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/avg/toolkit/e/a;->a:Lcom/avg/toolkit/e/b;

    sget-object v4, Lcom/avg/toolkit/e/b;->b:Lcom/avg/toolkit/e/b;

    if-ne v3, v4, :cond_3

    :cond_2
    sget-object v0, Lcom/avg/toolkit/e/c;->c:Lcom/avg/toolkit/e/c;

    :cond_3
    iput-object v0, p0, Lcom/avg/toolkit/e/a;->g:Lcom/avg/toolkit/e/c;

    iput-object v0, p0, Lcom/avg/toolkit/e/a;->h:Lcom/avg/toolkit/e/c;

    iput-object v0, p0, Lcom/avg/toolkit/e/a;->i:Lcom/avg/toolkit/e/c;

    iput-object v0, p0, Lcom/avg/toolkit/e/a;->j:Lcom/avg/toolkit/e/c;

    iput-boolean p7, p0, Lcom/avg/toolkit/e/a;->r:Z

    iget v0, p0, Lcom/avg/toolkit/e/a;->o:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/avg/toolkit/e/a;->o:I

    if-eq v0, v5, :cond_7

    iget v0, p0, Lcom/avg/toolkit/e/a;->o:I

    const/16 v3, 0x12c

    if-eq v0, v3, :cond_7

    iget v0, p0, Lcom/avg/toolkit/e/a;->o:I

    if-eq v0, v6, :cond_7

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/avg/toolkit/e/a;->q:Z

    iget v0, p0, Lcom/avg/toolkit/e/a;->o:I

    if-ne v0, v5, :cond_8

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/avg/toolkit/e/a;->s:Z

    iget-object v0, p0, Lcom/avg/toolkit/e/a;->a:Lcom/avg/toolkit/e/b;

    sget-object v3, Lcom/avg/toolkit/e/b;->a:Lcom/avg/toolkit/e/b;

    if-ne v0, v3, :cond_9

    iget v0, p0, Lcom/avg/toolkit/e/a;->n:I

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/avg/toolkit/e/a;->k:Lcom/avg/toolkit/e/d;

    sget-object v3, Lcom/avg/toolkit/e/d;->b:Lcom/avg/toolkit/e/d;

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/avg/toolkit/e/a;->m:Z

    iget-object v0, p0, Lcom/avg/toolkit/e/a;->a:Lcom/avg/toolkit/e/b;

    sget-object v3, Lcom/avg/toolkit/e/b;->a:Lcom/avg/toolkit/e/b;

    if-ne v0, v3, :cond_a

    if-ne p5, v6, :cond_a

    :goto_6
    iput-boolean v1, p0, Lcom/avg/toolkit/e/a;->t:Z

    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/avg/toolkit/e/c;->a:Lcom/avg/toolkit/e/c;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/avg/toolkit/e/c;->a:Lcom/avg/toolkit/e/c;

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_5

    :cond_a
    move v1, v2

    goto :goto_6
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/avg/toolkit/e/a;->k:Lcom/avg/toolkit/e/d;

    sget-object v1, Lcom/avg/toolkit/e/d;->b:Lcom/avg/toolkit/e/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/avg/toolkit/e/a;->k:Lcom/avg/toolkit/e/d;

    sget-object v1, Lcom/avg/toolkit/e/d;->a:Lcom/avg/toolkit/e/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/avg/toolkit/e/a;->h:Lcom/avg/toolkit/e/c;

    sget-object v1, Lcom/avg/toolkit/e/c;->b:Lcom/avg/toolkit/e/c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Lcom/avg/toolkit/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/avg/toolkit/e/a;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/avg/toolkit/e/a;->n:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
