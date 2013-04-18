.class public final Lcom/keniu/security/sync/d/d/a/ib;
.super Lcom/b/a/dk;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/id;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/ib;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Lcom/keniu/security/sync/d/d/a/gn;

.field private g:J

.field private h:J

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1552
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ib;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ib;-><init>()V

    .line 1553
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ib;->d:Lcom/keniu/security/sync/d/d/a/ib;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ib;->f:Lcom/keniu/security/sync/d/d/a/gn;

    iput-wide v2, v0, Lcom/keniu/security/sync/d/d/a/ib;->g:J

    iput-wide v2, v0, Lcom/keniu/security/sync/d/d/a/ib;->h:J

    .line 1554
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1028
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 1088
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->i:B

    .line 1120
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->k:I

    .line 1028
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ic;)V
    .locals 1
    .parameter

    .prologue
    .line 1021
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ib;-><init>(Lcom/keniu/security/sync/d/d/a/ic;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ic;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1026
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 1088
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->i:B

    .line 1120
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->k:I

    .line 1027
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ib;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1021
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ib;->e:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ib;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1021
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/ib;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ib;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ib;->f:Lcom/keniu/security/sync/d/d/a/gn;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ib;
    .locals 1
    .parameter

    .prologue
    .line 1153
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ic;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ic;)Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ib;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1159
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ic;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ic;)Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ib;
    .locals 1
    .parameter

    .prologue
    .line 1207
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ic;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ic;)Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ib;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1213
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ic;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ic;)Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ib;
    .locals 1
    .parameter

    .prologue
    .line 1175
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ic;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ic;)Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ib;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1181
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ic;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ic;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ic;)Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ib;
    .locals 1
    .parameter

    .prologue
    .line 1164
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ic;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ic;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ic;)Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ib;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1170
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ic;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ic;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ic;)Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ib;)Lcom/keniu/security/sync/d/d/a/ic;
    .locals 1
    .parameter

    .prologue
    .line 1220
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ib;)Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/ib;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1021
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/ib;->h:J

    return-wide p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ib;
    .locals 2
    .parameter

    .prologue
    .line 1186
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    .line 1187
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ic;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1188
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ic;)Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    .line 1190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ib;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1197
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    .line 1198
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ic;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ic;)Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    .line 1201
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ic;
    .locals 1
    .parameter

    .prologue
    .line 1227
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ic;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ic;-><init>(Lcom/b/a/dp;)V

    .line 1228
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ib;
    .locals 1

    .prologue
    .line 1032
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ib;->d:Lcom/keniu/security/sync/d/d/a/ib;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1041
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static q()Lcom/keniu/security/sync/d/d/a/ic;
    .locals 1

    .prologue
    .line 1217
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r()Z
    .locals 1

    .prologue
    .line 1021
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ib;->j:Z

    return v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/ib;
    .locals 1

    .prologue
    .line 1036
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ib;->d:Lcom/keniu/security/sync/d/d/a/ib;

    return-object v0
.end method

.method private t()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1084
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->f:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1085
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/ib;->g:J

    .line 1086
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/ib;->h:J

    .line 1087
    return-void
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/ic;
    .locals 1

    .prologue
    .line 1218
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/ic;
    .locals 1

    .prologue
    .line 1222
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ib;)Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1147
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1021
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ib;->v()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1021
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1021
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ib;->v()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1021
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ic;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1021
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ib;->d:Lcom/keniu/security/sync/d/d/a/ib;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1021
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ib;->d:Lcom/keniu/security/sync/d/d/a/ib;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 1021
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ic;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ic;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1107
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ib;->b()I

    .line 1108
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->f:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 1111
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1112
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->g:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/b/a/n;->b(IJ)V

    .line 1114
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1115
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/ib;->h:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 1117
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ib;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 1118
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1090
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->i:B

    .line 1091
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 1102
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 1091
    goto :goto_0

    .line 1093
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ib;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1094
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ib;->i:B

    move v0, v2

    .line 1095
    goto :goto_0

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->f:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1098
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ib;->i:B

    move v0, v2

    .line 1099
    goto :goto_0

    .line 1101
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ib;->i:B

    move v0, v3

    .line 1102
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1122
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->k:I

    .line 1123
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1140
    :goto_0
    return v0

    .line 1125
    :cond_0
    const/4 v0, 0x0

    .line 1126
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ib;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->f:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1130
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ib;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1131
    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/ib;->g:J

    invoke-static {v3, v1, v2}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1134
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ib;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1135
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/ib;->h:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1138
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ib;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 1139
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 1046
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->g()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1054
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->f:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->f:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 1067
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->e:I

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

.method public final n()J
    .locals 2

    .prologue
    .line 1070
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->g:J

    return-wide v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 1077
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->e:I

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

.method public final p()J
    .locals 2

    .prologue
    .line 1080
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/ib;->h:J

    return-wide v0
.end method
