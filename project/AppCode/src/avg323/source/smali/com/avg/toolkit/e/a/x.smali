.class public Lcom/avg/toolkit/e/a/x;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/avg/toolkit/e/a/o;

.field public b:Ljava/lang/Byte;

.field public c:Ljava/lang/String;

.field public d:Lcom/avg/toolkit/e/a/s;

.field public e:Lcom/avg/toolkit/e/a/u;

.field public f:I

.field public g:Lcom/avg/toolkit/e/a/r;

.field public h:I

.field public i:J

.field public j:Lcom/avg/toolkit/e/a/q;

.field public k:Ljava/util/HashSet;

.field public l:I

.field public m:Z

.field public n:Lcom/avg/toolkit/e/a/p;

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Lcom/avg/toolkit/e/a/u;

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/avg/toolkit/e/a/o;->a:Lcom/avg/toolkit/e/a/o;

    iput-object v0, p0, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/toolkit/e/a/x;->b:Ljava/lang/Byte;

    const-string v0, ""

    iput-object v0, p0, Lcom/avg/toolkit/e/a/x;->c:Ljava/lang/String;

    sget-object v0, Lcom/avg/toolkit/e/a/s;->a:Lcom/avg/toolkit/e/a/s;

    iput-object v0, p0, Lcom/avg/toolkit/e/a/x;->d:Lcom/avg/toolkit/e/a/s;

    sget-object v0, Lcom/avg/toolkit/e/a/u;->a:Lcom/avg/toolkit/e/a/u;

    iput-object v0, p0, Lcom/avg/toolkit/e/a/x;->e:Lcom/avg/toolkit/e/a/u;

    iput v2, p0, Lcom/avg/toolkit/e/a/x;->f:I

    sget-object v0, Lcom/avg/toolkit/e/a/r;->a:Lcom/avg/toolkit/e/a/r;

    iput-object v0, p0, Lcom/avg/toolkit/e/a/x;->g:Lcom/avg/toolkit/e/a/r;

    iput v2, p0, Lcom/avg/toolkit/e/a/x;->h:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/avg/toolkit/e/a/x;->i:J

    sget-object v0, Lcom/avg/toolkit/e/a/q;->a:Lcom/avg/toolkit/e/a/q;

    iput-object v0, p0, Lcom/avg/toolkit/e/a/x;->j:Lcom/avg/toolkit/e/a/q;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avg/toolkit/e/a/x;->k:Ljava/util/HashSet;

    iput v2, p0, Lcom/avg/toolkit/e/a/x;->l:I

    iput-boolean v2, p0, Lcom/avg/toolkit/e/a/x;->m:Z

    sget-object v0, Lcom/avg/toolkit/e/a/p;->d:Lcom/avg/toolkit/e/a/p;

    iput-object v0, p0, Lcom/avg/toolkit/e/a/x;->n:Lcom/avg/toolkit/e/a/p;

    iput v2, p0, Lcom/avg/toolkit/e/a/x;->o:I

    sget-object v0, Lcom/avg/toolkit/e/a/u;->a:Lcom/avg/toolkit/e/a/u;

    iput-object v0, p0, Lcom/avg/toolkit/e/a/x;->r:Lcom/avg/toolkit/e/a/u;

    const/4 v0, 0x1

    iput v0, p0, Lcom/avg/toolkit/e/a/x;->s:I

    iput v2, p0, Lcom/avg/toolkit/e/a/x;->t:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/avg/toolkit/e/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/toolkit/e/a/x;->e:Lcom/avg/toolkit/e/a/u;

    return-void
.end method

.method a(Lcom/avg/toolkit/e/a/x;)V
    .locals 3

    new-instance v0, Lcom/avg/toolkit/e/a/x;

    invoke-direct {v0}, Lcom/avg/toolkit/e/a/x;-><init>()V

    iget-object v1, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    iput-object v1, v0, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    iget-object v1, p0, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    iput-object v1, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    iget-object v1, v0, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    iput-object v1, p0, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    iget-object v1, p1, Lcom/avg/toolkit/e/a/x;->b:Ljava/lang/Byte;

    iput-object v1, v0, Lcom/avg/toolkit/e/a/x;->b:Ljava/lang/Byte;

    iget-object v1, p0, Lcom/avg/toolkit/e/a/x;->b:Ljava/lang/Byte;

    iput-object v1, p1, Lcom/avg/toolkit/e/a/x;->b:Ljava/lang/Byte;

    iget-object v1, v0, Lcom/avg/toolkit/e/a/x;->b:Ljava/lang/Byte;

    iput-object v1, p0, Lcom/avg/toolkit/e/a/x;->b:Ljava/lang/Byte;

    iget-object v1, p1, Lcom/avg/toolkit/e/a/x;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/avg/toolkit/e/a/x;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/avg/toolkit/e/a/x;->c:Ljava/lang/String;

    iput-object v1, p1, Lcom/avg/toolkit/e/a/x;->c:Ljava/lang/String;

    iget-object v1, v0, Lcom/avg/toolkit/e/a/x;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/avg/toolkit/e/a/x;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/avg/toolkit/e/a/x;->d:Lcom/avg/toolkit/e/a/s;

    iput-object v1, v0, Lcom/avg/toolkit/e/a/x;->d:Lcom/avg/toolkit/e/a/s;

    iget-object v1, p0, Lcom/avg/toolkit/e/a/x;->d:Lcom/avg/toolkit/e/a/s;

    iput-object v1, p1, Lcom/avg/toolkit/e/a/x;->d:Lcom/avg/toolkit/e/a/s;

    iget-object v1, v0, Lcom/avg/toolkit/e/a/x;->d:Lcom/avg/toolkit/e/a/s;

    iput-object v1, p0, Lcom/avg/toolkit/e/a/x;->d:Lcom/avg/toolkit/e/a/s;

    iget-object v1, p1, Lcom/avg/toolkit/e/a/x;->e:Lcom/avg/toolkit/e/a/u;

    iput-object v1, v0, Lcom/avg/toolkit/e/a/x;->e:Lcom/avg/toolkit/e/a/u;

    iget-object v1, p0, Lcom/avg/toolkit/e/a/x;->e:Lcom/avg/toolkit/e/a/u;

    iput-object v1, p1, Lcom/avg/toolkit/e/a/x;->e:Lcom/avg/toolkit/e/a/u;

    iget-object v1, v0, Lcom/avg/toolkit/e/a/x;->e:Lcom/avg/toolkit/e/a/u;

    iput-object v1, p0, Lcom/avg/toolkit/e/a/x;->e:Lcom/avg/toolkit/e/a/u;

    iget v1, p1, Lcom/avg/toolkit/e/a/x;->f:I

    iput v1, v0, Lcom/avg/toolkit/e/a/x;->f:I

    iget v1, p0, Lcom/avg/toolkit/e/a/x;->f:I

    iput v1, p1, Lcom/avg/toolkit/e/a/x;->f:I

    iget v1, v0, Lcom/avg/toolkit/e/a/x;->f:I

    iput v1, p0, Lcom/avg/toolkit/e/a/x;->f:I

    iget-object v1, p1, Lcom/avg/toolkit/e/a/x;->g:Lcom/avg/toolkit/e/a/r;

    iput-object v1, v0, Lcom/avg/toolkit/e/a/x;->g:Lcom/avg/toolkit/e/a/r;

    iget-object v1, p0, Lcom/avg/toolkit/e/a/x;->g:Lcom/avg/toolkit/e/a/r;

    iput-object v1, p1, Lcom/avg/toolkit/e/a/x;->g:Lcom/avg/toolkit/e/a/r;

    iget-object v1, v0, Lcom/avg/toolkit/e/a/x;->g:Lcom/avg/toolkit/e/a/r;

    iput-object v1, p0, Lcom/avg/toolkit/e/a/x;->g:Lcom/avg/toolkit/e/a/r;

    iget v1, p1, Lcom/avg/toolkit/e/a/x;->h:I

    iput v1, v0, Lcom/avg/toolkit/e/a/x;->h:I

    iget v1, p0, Lcom/avg/toolkit/e/a/x;->h:I

    iput v1, p1, Lcom/avg/toolkit/e/a/x;->h:I

    iget v1, v0, Lcom/avg/toolkit/e/a/x;->h:I

    iput v1, p0, Lcom/avg/toolkit/e/a/x;->h:I

    iget-wide v1, p1, Lcom/avg/toolkit/e/a/x;->i:J

    iput-wide v1, v0, Lcom/avg/toolkit/e/a/x;->i:J

    iget-wide v1, p0, Lcom/avg/toolkit/e/a/x;->i:J

    iput-wide v1, p1, Lcom/avg/toolkit/e/a/x;->i:J

    iget-wide v1, v0, Lcom/avg/toolkit/e/a/x;->i:J

    iput-wide v1, p0, Lcom/avg/toolkit/e/a/x;->i:J

    iget-object v1, p1, Lcom/avg/toolkit/e/a/x;->j:Lcom/avg/toolkit/e/a/q;

    iput-object v1, v0, Lcom/avg/toolkit/e/a/x;->j:Lcom/avg/toolkit/e/a/q;

    iget-object v1, p0, Lcom/avg/toolkit/e/a/x;->j:Lcom/avg/toolkit/e/a/q;

    iput-object v1, p1, Lcom/avg/toolkit/e/a/x;->j:Lcom/avg/toolkit/e/a/q;

    iget-object v1, v0, Lcom/avg/toolkit/e/a/x;->j:Lcom/avg/toolkit/e/a/q;

    iput-object v1, p0, Lcom/avg/toolkit/e/a/x;->j:Lcom/avg/toolkit/e/a/q;

    iget-object v1, p1, Lcom/avg/toolkit/e/a/x;->k:Ljava/util/HashSet;

    iput-object v1, v0, Lcom/avg/toolkit/e/a/x;->k:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/avg/toolkit/e/a/x;->k:Ljava/util/HashSet;

    iput-object v1, p1, Lcom/avg/toolkit/e/a/x;->k:Ljava/util/HashSet;

    iget-object v1, v0, Lcom/avg/toolkit/e/a/x;->k:Ljava/util/HashSet;

    iput-object v1, p0, Lcom/avg/toolkit/e/a/x;->k:Ljava/util/HashSet;

    iget v1, p1, Lcom/avg/toolkit/e/a/x;->l:I

    iput v1, v0, Lcom/avg/toolkit/e/a/x;->l:I

    iget v1, p0, Lcom/avg/toolkit/e/a/x;->l:I

    iput v1, p1, Lcom/avg/toolkit/e/a/x;->l:I

    iget v1, v0, Lcom/avg/toolkit/e/a/x;->l:I

    iput v1, p0, Lcom/avg/toolkit/e/a/x;->l:I

    iget-object v1, p1, Lcom/avg/toolkit/e/a/x;->r:Lcom/avg/toolkit/e/a/u;

    iput-object v1, v0, Lcom/avg/toolkit/e/a/x;->r:Lcom/avg/toolkit/e/a/u;

    iget-object v1, p0, Lcom/avg/toolkit/e/a/x;->r:Lcom/avg/toolkit/e/a/u;

    iput-object v1, p1, Lcom/avg/toolkit/e/a/x;->r:Lcom/avg/toolkit/e/a/u;

    iget-object v1, v0, Lcom/avg/toolkit/e/a/x;->r:Lcom/avg/toolkit/e/a/u;

    iput-object v1, p0, Lcom/avg/toolkit/e/a/x;->r:Lcom/avg/toolkit/e/a/u;

    iget v1, p1, Lcom/avg/toolkit/e/a/x;->s:I

    iput v1, v0, Lcom/avg/toolkit/e/a/x;->s:I

    iget v1, p0, Lcom/avg/toolkit/e/a/x;->s:I

    iput v1, p1, Lcom/avg/toolkit/e/a/x;->s:I

    iget v1, v0, Lcom/avg/toolkit/e/a/x;->s:I

    iput v1, p0, Lcom/avg/toolkit/e/a/x;->s:I

    iget v1, p1, Lcom/avg/toolkit/e/a/x;->t:I

    iput v1, v0, Lcom/avg/toolkit/e/a/x;->t:I

    iget v1, p0, Lcom/avg/toolkit/e/a/x;->t:I

    iput v1, p1, Lcom/avg/toolkit/e/a/x;->t:I

    iget v1, v0, Lcom/avg/toolkit/e/a/x;->t:I

    iput v1, p0, Lcom/avg/toolkit/e/a/x;->t:I

    iget-boolean v1, p1, Lcom/avg/toolkit/e/a/x;->m:Z

    iput-boolean v1, v0, Lcom/avg/toolkit/e/a/x;->m:Z

    iget-boolean v1, p0, Lcom/avg/toolkit/e/a/x;->m:Z

    iput-boolean v1, p1, Lcom/avg/toolkit/e/a/x;->m:Z

    iget-boolean v1, v0, Lcom/avg/toolkit/e/a/x;->m:Z

    iput-boolean v1, p0, Lcom/avg/toolkit/e/a/x;->m:Z

    iget-object v1, p1, Lcom/avg/toolkit/e/a/x;->n:Lcom/avg/toolkit/e/a/p;

    iput-object v1, v0, Lcom/avg/toolkit/e/a/x;->n:Lcom/avg/toolkit/e/a/p;

    iget-object v1, p0, Lcom/avg/toolkit/e/a/x;->n:Lcom/avg/toolkit/e/a/p;

    iput-object v1, p1, Lcom/avg/toolkit/e/a/x;->n:Lcom/avg/toolkit/e/a/p;

    iget-object v1, v0, Lcom/avg/toolkit/e/a/x;->n:Lcom/avg/toolkit/e/a/p;

    iput-object v1, p0, Lcom/avg/toolkit/e/a/x;->n:Lcom/avg/toolkit/e/a/p;

    iget v1, p1, Lcom/avg/toolkit/e/a/x;->o:I

    iput v1, v0, Lcom/avg/toolkit/e/a/x;->o:I

    iget v1, p0, Lcom/avg/toolkit/e/a/x;->o:I

    iput v1, p1, Lcom/avg/toolkit/e/a/x;->o:I

    iget v1, v0, Lcom/avg/toolkit/e/a/x;->o:I

    iput v1, p0, Lcom/avg/toolkit/e/a/x;->o:I

    iget-object v1, p1, Lcom/avg/toolkit/e/a/x;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/avg/toolkit/e/a/x;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/avg/toolkit/e/a/x;->p:Ljava/lang/String;

    iput-object v1, p1, Lcom/avg/toolkit/e/a/x;->p:Ljava/lang/String;

    iget-object v1, v0, Lcom/avg/toolkit/e/a/x;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/avg/toolkit/e/a/x;->p:Ljava/lang/String;

    iget-object v1, p1, Lcom/avg/toolkit/e/a/x;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/avg/toolkit/e/a/x;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/avg/toolkit/e/a/x;->q:Ljava/lang/String;

    iput-object v1, p1, Lcom/avg/toolkit/e/a/x;->q:Ljava/lang/String;

    iget-object v0, v0, Lcom/avg/toolkit/e/a/x;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/avg/toolkit/e/a/x;->q:Ljava/lang/String;

    return-void
.end method
