.class public final Lcom/keniu/security/sync/d/d/a/fh;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fj;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/fh;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Lcom/keniu/security/sync/d/d/a/ge;

.field private g:Lcom/keniu/security/sync/d/d/a/gj;

.field private h:Lcom/keniu/security/sync/d/d/a/gy;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10330
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fh;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fh;-><init>()V

    .line 10331
    sput-object v0, Lcom/keniu/security/sync/d/d/a/fh;->d:Lcom/keniu/security/sync/d/d/a/fh;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fh;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fh;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fh;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 10332
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 9636
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 9702
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->i:B

    .line 9734
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->k:I

    .line 9636
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/fi;)V
    .locals 1
    .parameter

    .prologue
    .line 9629
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fh;-><init>(Lcom/keniu/security/sync/d/d/a/fi;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/fi;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9634
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 9702
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->i:B

    .line 9734
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->k:I

    .line 9635
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fh;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9629
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/fh;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/fh;
    .locals 1
    .parameter

    .prologue
    .line 9767
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fi;)Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9773
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fi;)Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/fh;
    .locals 1
    .parameter

    .prologue
    .line 9821
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fi;)Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9827
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fi;)Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fh;
    .locals 1
    .parameter

    .prologue
    .line 9789
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fi;)Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9795
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fi;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fi;)Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/fh;
    .locals 1
    .parameter

    .prologue
    .line 9778
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fi;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fi;)Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9784
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fi;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fi;)Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/fh;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1
    .parameter

    .prologue
    .line 9834
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fh;)Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fh;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9629
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fh;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fh;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9629
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fh;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fh;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9629
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fh;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fh;
    .locals 2
    .parameter

    .prologue
    .line 9800
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    .line 9801
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fi;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9802
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fi;)Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    .line 9804
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fh;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 9811
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    .line 9812
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fi;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9813
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fi;)Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    .line 9815
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1
    .parameter

    .prologue
    .line 9841
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fi;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/fi;-><init>(Lcom/b/a/dp;)V

    .line 9842
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/fh;
    .locals 1

    .prologue
    .line 9640
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fh;->d:Lcom/keniu/security/sync/d/d/a/fh;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9649
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->F()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 9629
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/fh;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/fh;
    .locals 1

    .prologue
    .line 9644
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fh;->d:Lcom/keniu/security/sync/d/d/a/fh;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 9698
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9699
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->g:Lcom/keniu/security/sync/d/d/a/gj;

    .line 9700
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 9701
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1

    .prologue
    .line 9831
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1

    .prologue
    .line 9832
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1

    .prologue
    .line 9836
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fh;)Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9761
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fh;->x()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9629
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fh;->x()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9629
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fi;->i()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9629
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fh;->d:Lcom/keniu/security/sync/d/d/a/fh;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9629
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fh;->d:Lcom/keniu/security/sync/d/d/a/fh;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 9629
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fi;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/fi;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 9721
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fh;->b()I

    .line 9722
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 9723
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 9725
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 9726
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 9728
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 9729
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fh;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 9731
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fh;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 9732
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9704
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->i:B

    .line 9705
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 9716
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 9705
    goto :goto_0

    .line 9707
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fh;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9708
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fh;->i:B

    move v0, v2

    .line 9709
    goto :goto_0

    .line 9711
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9712
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fh;->i:B

    move v0, v2

    .line 9713
    goto :goto_0

    .line 9715
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/fh;->i:B

    move v0, v3

    .line 9716
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 9736
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->k:I

    .line 9737
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9754
    :goto_0
    return v0

    .line 9739
    :cond_0
    const/4 v0, 0x0

    .line 9740
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fh;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 9741
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 9744
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fh;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 9745
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fh;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9748
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fh;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 9749
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fh;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9752
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fh;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 9753
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 9654
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->G()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9662
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1

    .prologue
    .line 9665
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 9668
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 9675
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->e:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1

    .prologue
    .line 9678
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 9681
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 9688
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 9691
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 9694
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fh;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method
