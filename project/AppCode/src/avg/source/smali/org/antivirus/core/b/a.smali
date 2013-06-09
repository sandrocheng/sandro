.class public final Lorg/antivirus/core/b/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/antivirus/core/b/b;

.field public final b:Lorg/antivirus/core/b/c;

.field public final c:Lorg/antivirus/core/b/c;

.field public final d:Lorg/antivirus/core/b/c;

.field public final e:Lorg/antivirus/core/b/c;

.field public final f:Lorg/antivirus/core/b/c;

.field public final g:Lorg/antivirus/core/b/c;

.field public final h:Lorg/antivirus/core/b/c;

.field public final i:Lorg/antivirus/core/b/c;

.field public final j:Lorg/antivirus/core/b/c;

.field public final k:Lorg/antivirus/core/b/d;

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
.method public constructor <init>(ILorg/antivirus/core/b/b;Lorg/antivirus/core/b/b;IILorg/antivirus/core/b/d;Z)V
    .locals 7

    const/16 v6, 0x14c

    const/16 v5, 0x12d

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ne p5, v5, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/antivirus/core/b/a;->l:Z

    iput-object p2, p0, Lorg/antivirus/core/b/a;->a:Lorg/antivirus/core/b/b;

    iput-object p6, p0, Lorg/antivirus/core/b/a;->k:Lorg/antivirus/core/b/d;

    iput p4, p0, Lorg/antivirus/core/b/a;->n:I

    iput p5, p0, Lorg/antivirus/core/b/a;->o:I

    iput p1, p0, Lorg/antivirus/core/b/a;->p:I

    sget-object v0, Lorg/antivirus/core/b/b;->c:Lorg/antivirus/core/b/b;

    if-ne p3, v0, :cond_5

    sget-object v0, Lorg/antivirus/core/b/c;->b:Lorg/antivirus/core/b/c;

    :goto_1
    iget v3, p0, Lorg/antivirus/core/b/a;->n:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lorg/antivirus/core/b/a;->a:Lorg/antivirus/core/b/b;

    sget-object v4, Lorg/antivirus/core/b/b;->c:Lorg/antivirus/core/b/b;

    if-ne v3, v4, :cond_0

    sget-object v0, Lorg/antivirus/core/b/c;->c:Lorg/antivirus/core/b/c;

    :cond_0
    iput-object v0, p0, Lorg/antivirus/core/b/a;->b:Lorg/antivirus/core/b/c;

    iput-object v0, p0, Lorg/antivirus/core/b/a;->c:Lorg/antivirus/core/b/c;

    iput-object v0, p0, Lorg/antivirus/core/b/a;->d:Lorg/antivirus/core/b/c;

    iput-object v0, p0, Lorg/antivirus/core/b/a;->e:Lorg/antivirus/core/b/c;

    iput-object v0, p0, Lorg/antivirus/core/b/a;->f:Lorg/antivirus/core/b/c;

    sget-object v0, Lorg/antivirus/core/b/b;->c:Lorg/antivirus/core/b/b;

    if-eq p3, v0, :cond_1

    sget-object v0, Lorg/antivirus/core/b/b;->b:Lorg/antivirus/core/b/b;

    if-ne p3, v0, :cond_6

    :cond_1
    sget-object v0, Lorg/antivirus/core/b/c;->b:Lorg/antivirus/core/b/c;

    :goto_2
    iget v3, p0, Lorg/antivirus/core/b/a;->n:I

    if-ltz v3, :cond_3

    iget-object v3, p0, Lorg/antivirus/core/b/a;->a:Lorg/antivirus/core/b/b;

    sget-object v4, Lorg/antivirus/core/b/b;->c:Lorg/antivirus/core/b/b;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lorg/antivirus/core/b/a;->a:Lorg/antivirus/core/b/b;

    sget-object v4, Lorg/antivirus/core/b/b;->b:Lorg/antivirus/core/b/b;

    if-ne v3, v4, :cond_3

    :cond_2
    sget-object v0, Lorg/antivirus/core/b/c;->c:Lorg/antivirus/core/b/c;

    :cond_3
    iput-object v0, p0, Lorg/antivirus/core/b/a;->g:Lorg/antivirus/core/b/c;

    iput-object v0, p0, Lorg/antivirus/core/b/a;->h:Lorg/antivirus/core/b/c;

    iput-object v0, p0, Lorg/antivirus/core/b/a;->i:Lorg/antivirus/core/b/c;

    iput-object v0, p0, Lorg/antivirus/core/b/a;->j:Lorg/antivirus/core/b/c;

    iput-boolean p7, p0, Lorg/antivirus/core/b/a;->r:Z

    iget v0, p0, Lorg/antivirus/core/b/a;->o:I

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/antivirus/core/b/a;->o:I

    if-eq v0, v5, :cond_7

    iget v0, p0, Lorg/antivirus/core/b/a;->o:I

    const/16 v3, 0x12c

    if-eq v0, v3, :cond_7

    iget v0, p0, Lorg/antivirus/core/b/a;->o:I

    if-eq v0, v6, :cond_7

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/antivirus/core/b/a;->q:Z

    iget v0, p0, Lorg/antivirus/core/b/a;->o:I

    if-ne v0, v5, :cond_8

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/antivirus/core/b/a;->s:Z

    iget-object v0, p0, Lorg/antivirus/core/b/a;->a:Lorg/antivirus/core/b/b;

    sget-object v3, Lorg/antivirus/core/b/b;->a:Lorg/antivirus/core/b/b;

    if-ne v0, v3, :cond_9

    iget v0, p0, Lorg/antivirus/core/b/a;->n:I

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lorg/antivirus/core/b/a;->k:Lorg/antivirus/core/b/d;

    sget-object v3, Lorg/antivirus/core/b/d;->b:Lorg/antivirus/core/b/d;

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/antivirus/core/b/a;->m:Z

    iget-object v0, p0, Lorg/antivirus/core/b/a;->a:Lorg/antivirus/core/b/b;

    sget-object v3, Lorg/antivirus/core/b/b;->a:Lorg/antivirus/core/b/b;

    if-ne v0, v3, :cond_a

    if-ne p5, v6, :cond_a

    :goto_6
    iput-boolean v1, p0, Lorg/antivirus/core/b/a;->t:Z

    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lorg/antivirus/core/b/c;->a:Lorg/antivirus/core/b/c;

    goto :goto_1

    :cond_6
    sget-object v0, Lorg/antivirus/core/b/c;->a:Lorg/antivirus/core/b/c;

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
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lorg/antivirus/core/b/a;->k:Lorg/antivirus/core/b/d;

    sget-object v1, Lorg/antivirus/core/b/d;->b:Lorg/antivirus/core/b/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lorg/antivirus/core/b/a;->k:Lorg/antivirus/core/b/d;

    sget-object v1, Lorg/antivirus/core/b/d;->a:Lorg/antivirus/core/b/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lorg/antivirus/core/b/a;->h:Lorg/antivirus/core/b/c;

    sget-object v1, Lorg/antivirus/core/b/c;->b:Lorg/antivirus/core/b/c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    invoke-virtual {p0}, Lorg/antivirus/core/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/antivirus/core/b/a;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/antivirus/core/b/a;->n:I

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
