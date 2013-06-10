.class public final Lorg/antivirus/core/b/a/x;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/antivirus/core/b/a/o;

.field public b:Ljava/lang/Byte;

.field public c:Ljava/lang/String;

.field public d:Lorg/antivirus/core/b/a/s;

.field public e:Lorg/antivirus/core/b/a/u;

.field public f:I

.field public g:Lorg/antivirus/core/b/a/r;

.field public h:I

.field public i:J

.field public j:Lorg/antivirus/core/b/a/q;

.field public k:Ljava/util/HashSet;

.field public l:I

.field public m:Z

.field public n:Lorg/antivirus/core/b/a/p;

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Lorg/antivirus/core/b/a/u;

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/antivirus/core/b/a/o;->a:Lorg/antivirus/core/b/a/o;

    iput-object v0, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/b/a/x;->b:Ljava/lang/Byte;

    const-string v0, ""

    iput-object v0, p0, Lorg/antivirus/core/b/a/x;->c:Ljava/lang/String;

    sget-object v0, Lorg/antivirus/core/b/a/s;->a:Lorg/antivirus/core/b/a/s;

    iput-object v0, p0, Lorg/antivirus/core/b/a/x;->d:Lorg/antivirus/core/b/a/s;

    sget-object v0, Lorg/antivirus/core/b/a/u;->a:Lorg/antivirus/core/b/a/u;

    iput-object v0, p0, Lorg/antivirus/core/b/a/x;->e:Lorg/antivirus/core/b/a/u;

    iput v2, p0, Lorg/antivirus/core/b/a/x;->f:I

    sget-object v0, Lorg/antivirus/core/b/a/r;->a:Lorg/antivirus/core/b/a/r;

    iput-object v0, p0, Lorg/antivirus/core/b/a/x;->g:Lorg/antivirus/core/b/a/r;

    iput v2, p0, Lorg/antivirus/core/b/a/x;->h:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/antivirus/core/b/a/x;->i:J

    sget-object v0, Lorg/antivirus/core/b/a/q;->a:Lorg/antivirus/core/b/a/q;

    iput-object v0, p0, Lorg/antivirus/core/b/a/x;->j:Lorg/antivirus/core/b/a/q;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/b/a/x;->k:Ljava/util/HashSet;

    iput v2, p0, Lorg/antivirus/core/b/a/x;->l:I

    iput-boolean v2, p0, Lorg/antivirus/core/b/a/x;->m:Z

    sget-object v0, Lorg/antivirus/core/b/a/p;->d:Lorg/antivirus/core/b/a/p;

    iput-object v0, p0, Lorg/antivirus/core/b/a/x;->n:Lorg/antivirus/core/b/a/p;

    iput v2, p0, Lorg/antivirus/core/b/a/x;->o:I

    sget-object v0, Lorg/antivirus/core/b/a/u;->a:Lorg/antivirus/core/b/a/u;

    iput-object v0, p0, Lorg/antivirus/core/b/a/x;->r:Lorg/antivirus/core/b/a/u;

    const/4 v0, 0x1

    iput v0, p0, Lorg/antivirus/core/b/a/x;->s:I

    iput v2, p0, Lorg/antivirus/core/b/a/x;->t:I

    return-void
.end method


# virtual methods
.method final a(Lorg/antivirus/core/b/a/x;)V
    .locals 3

    new-instance v0, Lorg/antivirus/core/b/a/x;

    invoke-direct {v0}, Lorg/antivirus/core/b/a/x;-><init>()V

    iget-object v1, p1, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    iput-object v1, v0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    iput-object v1, p1, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    iget-object v1, v0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    iget-object v1, p1, Lorg/antivirus/core/b/a/x;->b:Ljava/lang/Byte;

    iput-object v1, v0, Lorg/antivirus/core/b/a/x;->b:Ljava/lang/Byte;

    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->b:Ljava/lang/Byte;

    iput-object v1, p1, Lorg/antivirus/core/b/a/x;->b:Ljava/lang/Byte;

    iget-object v1, v0, Lorg/antivirus/core/b/a/x;->b:Ljava/lang/Byte;

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->b:Ljava/lang/Byte;

    iget-object v1, p1, Lorg/antivirus/core/b/a/x;->c:Ljava/lang/String;

    iput-object v1, v0, Lorg/antivirus/core/b/a/x;->c:Ljava/lang/String;

    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->c:Ljava/lang/String;

    iput-object v1, p1, Lorg/antivirus/core/b/a/x;->c:Ljava/lang/String;

    iget-object v1, v0, Lorg/antivirus/core/b/a/x;->c:Ljava/lang/String;

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->c:Ljava/lang/String;

    iget-object v1, p1, Lorg/antivirus/core/b/a/x;->d:Lorg/antivirus/core/b/a/s;

    iput-object v1, v0, Lorg/antivirus/core/b/a/x;->d:Lorg/antivirus/core/b/a/s;

    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->d:Lorg/antivirus/core/b/a/s;

    iput-object v1, p1, Lorg/antivirus/core/b/a/x;->d:Lorg/antivirus/core/b/a/s;

    iget-object v1, v0, Lorg/antivirus/core/b/a/x;->d:Lorg/antivirus/core/b/a/s;

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->d:Lorg/antivirus/core/b/a/s;

    iget-object v1, p1, Lorg/antivirus/core/b/a/x;->e:Lorg/antivirus/core/b/a/u;

    iput-object v1, v0, Lorg/antivirus/core/b/a/x;->e:Lorg/antivirus/core/b/a/u;

    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->e:Lorg/antivirus/core/b/a/u;

    iput-object v1, p1, Lorg/antivirus/core/b/a/x;->e:Lorg/antivirus/core/b/a/u;

    iget-object v1, v0, Lorg/antivirus/core/b/a/x;->e:Lorg/antivirus/core/b/a/u;

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->e:Lorg/antivirus/core/b/a/u;

    iget v1, p1, Lorg/antivirus/core/b/a/x;->f:I

    iput v1, v0, Lorg/antivirus/core/b/a/x;->f:I

    iget v1, p0, Lorg/antivirus/core/b/a/x;->f:I

    iput v1, p1, Lorg/antivirus/core/b/a/x;->f:I

    iget v1, v0, Lorg/antivirus/core/b/a/x;->f:I

    iput v1, p0, Lorg/antivirus/core/b/a/x;->f:I

    iget-object v1, p1, Lorg/antivirus/core/b/a/x;->g:Lorg/antivirus/core/b/a/r;

    iput-object v1, v0, Lorg/antivirus/core/b/a/x;->g:Lorg/antivirus/core/b/a/r;

    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->g:Lorg/antivirus/core/b/a/r;

    iput-object v1, p1, Lorg/antivirus/core/b/a/x;->g:Lorg/antivirus/core/b/a/r;

    iget-object v1, v0, Lorg/antivirus/core/b/a/x;->g:Lorg/antivirus/core/b/a/r;

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->g:Lorg/antivirus/core/b/a/r;

    iget v1, p1, Lorg/antivirus/core/b/a/x;->h:I

    iput v1, v0, Lorg/antivirus/core/b/a/x;->h:I

    iget v1, p0, Lorg/antivirus/core/b/a/x;->h:I

    iput v1, p1, Lorg/antivirus/core/b/a/x;->h:I

    iget v1, v0, Lorg/antivirus/core/b/a/x;->h:I

    iput v1, p0, Lorg/antivirus/core/b/a/x;->h:I

    iget-wide v1, p1, Lorg/antivirus/core/b/a/x;->i:J

    iput-wide v1, v0, Lorg/antivirus/core/b/a/x;->i:J

    iget-wide v1, p0, Lorg/antivirus/core/b/a/x;->i:J

    iput-wide v1, p1, Lorg/antivirus/core/b/a/x;->i:J

    iget-wide v1, v0, Lorg/antivirus/core/b/a/x;->i:J

    iput-wide v1, p0, Lorg/antivirus/core/b/a/x;->i:J

    iget-object v1, p1, Lorg/antivirus/core/b/a/x;->j:Lorg/antivirus/core/b/a/q;

    iput-object v1, v0, Lorg/antivirus/core/b/a/x;->j:Lorg/antivirus/core/b/a/q;

    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->j:Lorg/antivirus/core/b/a/q;

    iput-object v1, p1, Lorg/antivirus/core/b/a/x;->j:Lorg/antivirus/core/b/a/q;

    iget-object v1, v0, Lorg/antivirus/core/b/a/x;->j:Lorg/antivirus/core/b/a/q;

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->j:Lorg/antivirus/core/b/a/q;

    iget-object v1, p1, Lorg/antivirus/core/b/a/x;->k:Ljava/util/HashSet;

    iput-object v1, v0, Lorg/antivirus/core/b/a/x;->k:Ljava/util/HashSet;

    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->k:Ljava/util/HashSet;

    iput-object v1, p1, Lorg/antivirus/core/b/a/x;->k:Ljava/util/HashSet;

    iget-object v1, v0, Lorg/antivirus/core/b/a/x;->k:Ljava/util/HashSet;

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->k:Ljava/util/HashSet;

    iget v1, p1, Lorg/antivirus/core/b/a/x;->l:I

    iput v1, v0, Lorg/antivirus/core/b/a/x;->l:I

    iget v1, p0, Lorg/antivirus/core/b/a/x;->l:I

    iput v1, p1, Lorg/antivirus/core/b/a/x;->l:I

    iget v1, v0, Lorg/antivirus/core/b/a/x;->l:I

    iput v1, p0, Lorg/antivirus/core/b/a/x;->l:I

    iget-object v1, p1, Lorg/antivirus/core/b/a/x;->r:Lorg/antivirus/core/b/a/u;

    iput-object v1, v0, Lorg/antivirus/core/b/a/x;->r:Lorg/antivirus/core/b/a/u;

    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->r:Lorg/antivirus/core/b/a/u;

    iput-object v1, p1, Lorg/antivirus/core/b/a/x;->r:Lorg/antivirus/core/b/a/u;

    iget-object v1, v0, Lorg/antivirus/core/b/a/x;->r:Lorg/antivirus/core/b/a/u;

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->r:Lorg/antivirus/core/b/a/u;

    iget v1, p1, Lorg/antivirus/core/b/a/x;->s:I

    iput v1, v0, Lorg/antivirus/core/b/a/x;->s:I

    iget v1, p0, Lorg/antivirus/core/b/a/x;->s:I

    iput v1, p1, Lorg/antivirus/core/b/a/x;->s:I

    iget v1, v0, Lorg/antivirus/core/b/a/x;->s:I

    iput v1, p0, Lorg/antivirus/core/b/a/x;->s:I

    iget v1, p1, Lorg/antivirus/core/b/a/x;->t:I

    iput v1, v0, Lorg/antivirus/core/b/a/x;->t:I

    iget v1, p0, Lorg/antivirus/core/b/a/x;->t:I

    iput v1, p1, Lorg/antivirus/core/b/a/x;->t:I

    iget v1, v0, Lorg/antivirus/core/b/a/x;->t:I

    iput v1, p0, Lorg/antivirus/core/b/a/x;->t:I

    iget-boolean v1, p1, Lorg/antivirus/core/b/a/x;->m:Z

    iput-boolean v1, v0, Lorg/antivirus/core/b/a/x;->m:Z

    iget-boolean v1, p0, Lorg/antivirus/core/b/a/x;->m:Z

    iput-boolean v1, p1, Lorg/antivirus/core/b/a/x;->m:Z

    iget-boolean v1, v0, Lorg/antivirus/core/b/a/x;->m:Z

    iput-boolean v1, p0, Lorg/antivirus/core/b/a/x;->m:Z

    iget-object v1, p1, Lorg/antivirus/core/b/a/x;->n:Lorg/antivirus/core/b/a/p;

    iput-object v1, v0, Lorg/antivirus/core/b/a/x;->n:Lorg/antivirus/core/b/a/p;

    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->n:Lorg/antivirus/core/b/a/p;

    iput-object v1, p1, Lorg/antivirus/core/b/a/x;->n:Lorg/antivirus/core/b/a/p;

    iget-object v1, v0, Lorg/antivirus/core/b/a/x;->n:Lorg/antivirus/core/b/a/p;

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->n:Lorg/antivirus/core/b/a/p;

    iget v1, p1, Lorg/antivirus/core/b/a/x;->o:I

    iput v1, v0, Lorg/antivirus/core/b/a/x;->o:I

    iget v1, p0, Lorg/antivirus/core/b/a/x;->o:I

    iput v1, p1, Lorg/antivirus/core/b/a/x;->o:I

    iget v1, v0, Lorg/antivirus/core/b/a/x;->o:I

    iput v1, p0, Lorg/antivirus/core/b/a/x;->o:I

    iget-object v1, p1, Lorg/antivirus/core/b/a/x;->p:Ljava/lang/String;

    iput-object v1, v0, Lorg/antivirus/core/b/a/x;->p:Ljava/lang/String;

    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->p:Ljava/lang/String;

    iput-object v1, p1, Lorg/antivirus/core/b/a/x;->p:Ljava/lang/String;

    iget-object v1, v0, Lorg/antivirus/core/b/a/x;->p:Ljava/lang/String;

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->p:Ljava/lang/String;

    iget-object v1, p1, Lorg/antivirus/core/b/a/x;->q:Ljava/lang/String;

    iput-object v1, v0, Lorg/antivirus/core/b/a/x;->q:Ljava/lang/String;

    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->q:Ljava/lang/String;

    iput-object v1, p1, Lorg/antivirus/core/b/a/x;->q:Ljava/lang/String;

    iget-object v0, v0, Lorg/antivirus/core/b/a/x;->q:Ljava/lang/String;

    iput-object v0, p0, Lorg/antivirus/core/b/a/x;->q:Ljava/lang/String;

    return-void
.end method
