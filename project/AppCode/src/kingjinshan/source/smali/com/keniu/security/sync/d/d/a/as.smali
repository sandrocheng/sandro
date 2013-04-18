.class public final Lcom/keniu/security/sync/d/d/a/as;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/au;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/keniu/security/sync/d/d/a/as;

.field private static final g:J


# instance fields
.field private c:I

.field private d:Ljava/lang/Object;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1353
    new-instance v0, Lcom/keniu/security/sync/d/d/a/as;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/as;-><init>()V

    .line 1354
    sput-object v0, Lcom/keniu/security/sync/d/d/a/as;->b:Lcom/keniu/security/sync/d/d/a/as;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/as;->d:Ljava/lang/Object;

    .line 1355
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 991
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 1048
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/as;->e:B

    .line 1070
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/as;->f:I

    .line 991
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/at;)V
    .locals 1
    .parameter

    .prologue
    .line 984
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/as;-><init>(Lcom/keniu/security/sync/d/d/a/at;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/at;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 989
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 1048
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/as;->e:B

    .line 1070
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/as;->f:I

    .line 990
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/as;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 984
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/as;->c:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/as;
    .locals 1
    .parameter

    .prologue
    .line 1095
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/at;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/at;)Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/as;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1101
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/at;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/at;)Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/as;
    .locals 1
    .parameter

    .prologue
    .line 1149
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/at;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/at;)Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/as;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1155
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/at;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/at;)Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/as;
    .locals 1
    .parameter

    .prologue
    .line 1117
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/at;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/at;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/at;)Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/as;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1123
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/at;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/at;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/at;)Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/as;
    .locals 1
    .parameter

    .prologue
    .line 1106
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/at;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/at;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/at;)Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/as;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1112
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/at;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/at;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/at;)Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/as;)Lcom/keniu/security/sync/d/d/a/at;
    .locals 1
    .parameter

    .prologue
    .line 1162
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/as;)Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/as;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 984
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/as;->d:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/as;
    .locals 2
    .parameter

    .prologue
    .line 1128
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    .line 1129
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/at;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1130
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/at;)Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    .line 1132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/as;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1139
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    .line 1140
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/at;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1141
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/at;)Lcom/keniu/security/sync/d/d/a/as;

    move-result-object v0

    .line 1143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/at;
    .locals 1
    .parameter

    .prologue
    .line 1169
    new-instance v0, Lcom/keniu/security/sync/d/d/a/at;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/at;-><init>(Lcom/b/a/dp;)V

    .line 1170
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/as;
    .locals 1

    .prologue
    .line 995
    sget-object v0, Lcom/keniu/security/sync/d/d/a/as;->b:Lcom/keniu/security/sync/d/d/a/as;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1004
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l()Z
    .locals 1

    .prologue
    .line 984
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/as;->j:Z

    return v0
.end method

.method private static m()Lcom/keniu/security/sync/d/d/a/as;
    .locals 1

    .prologue
    .line 999
    sget-object v0, Lcom/keniu/security/sync/d/d/a/as;->b:Lcom/keniu/security/sync/d/d/a/as;

    return-object v0
.end method

.method private n()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/as;->d:Ljava/lang/Object;

    .line 1035
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1036
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 1038
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/as;->d:Ljava/lang/Object;

    .line 1041
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 1046
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/as;->d:Ljava/lang/Object;

    .line 1047
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/at;
    .locals 1

    .prologue
    .line 1159
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/at;
    .locals 1

    .prologue
    .line 1160
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/at;
    .locals 1

    .prologue
    .line 1164
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/at;->a(Lcom/keniu/security/sync/d/d/a/as;)Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1089
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 984
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/as;->r()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 984
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 984
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/as;->r()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 984
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/at;->i()Lcom/keniu/security/sync/d/d/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 984
    sget-object v0, Lcom/keniu/security/sync/d/d/a/as;->b:Lcom/keniu/security/sync/d/d/a/as;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 984
    sget-object v0, Lcom/keniu/security/sync/d/d/a/as;->b:Lcom/keniu/security/sync/d/d/a/as;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 984
    new-instance v0, Lcom/keniu/security/sync/d/d/a/at;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/at;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1063
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/as;->b()I

    .line 1064
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/as;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1065
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/as;->n()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 1067
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/as;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 1068
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1050
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/as;->e:B

    .line 1051
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 1058
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 1051
    goto :goto_0

    .line 1053
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/as;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1054
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/as;->e:B

    move v0, v3

    .line 1055
    goto :goto_0

    .line 1057
    :cond_2
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/as;->e:B

    move v0, v2

    .line 1058
    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1072
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/as;->f:I

    .line 1073
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1082
    :goto_0
    return v0

    .line 1075
    :cond_0
    const/4 v0, 0x0

    .line 1076
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/as;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1077
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/as;->n()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1080
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/as;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 1081
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/as;->f:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 1009
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->g()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1017
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/as;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1020
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/as;->d:Ljava/lang/Object;

    .line 1021
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1022
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1030
    :goto_0
    return-object v1

    .line 1024
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 1026
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 1027
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1028
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/as;->d:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1030
    goto :goto_0
.end method
