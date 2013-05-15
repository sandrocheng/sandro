.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/al;
.super Lcom/google/a/l;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/an;


# static fields
.field private static final a:Lcom/avast/android/mobilesecurity/engine/internal/a/al;


# instance fields
.field private b:I

.field private c:Lcom/google/a/z;

.field private d:J

.field private e:Ljava/lang/Object;

.field private f:Lcom/google/a/c;

.field private g:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1657
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/al;

    .line 1658
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/al;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->o()V

    .line 1659
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/am;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1062
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 1159
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->h:B

    .line 1188
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->i:I

    .line 1063
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/am;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1057
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/am;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1064
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 1159
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->h:B

    .line 1188
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->i:I

    .line 1064
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1057
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1057
    iput-wide p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->d:J

    return-wide p1
.end method

.method public static a()Lcom/avast/android/mobilesecurity/engine/internal/a/al;
    .locals 1

    .prologue
    .line 1068
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/al;

    return-object v0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 1
    .parameter

    .prologue
    .line 1300
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/z;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->g:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->f:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;Lcom/google/a/z;)Lcom/google/a/z;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->c:Lcom/google/a/z;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/engine/internal/a/al;)Lcom/google/a/z;
    .locals 1
    .parameter

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->c:Lcom/google/a/z;

    return-object v0
.end method

.method public static k()Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 1

    .prologue
    .line 1297
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method private n()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->e:Ljava/lang/Object;

    .line 1122
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1123
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 1125
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->e:Ljava/lang/Object;

    .line 1128
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 1153
    sget-object v0, Lcom/google/a/y;->a:Lcom/google/a/z;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->c:Lcom/google/a/z;

    .line 1154
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->d:J

    .line 1155
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->e:Ljava/lang/Object;

    .line 1156
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->f:Lcom/google/a/c;

    .line 1157
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->g:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    .line 1158
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->m()Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->l()Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1170
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->w()I

    .line 1171
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->c:Lcom/google/a/z;

    invoke-interface {v1}, Lcom/google/a/z;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->c:Lcom/google/a/z;

    invoke-interface {v1, v0}, Lcom/google/a/z;->c(I)Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    .line 1175
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->d:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/a/e;->c(IJ)V

    .line 1177
    :cond_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_2

    .line 1178
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->n()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1180
    :cond_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_3

    .line 1181
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->f:Lcom/google/a/c;

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1183
    :cond_3
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 1184
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->g:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 1186
    :cond_4
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->c:Lcom/google/a/z;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1094
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 1097
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->d:J

    return-wide v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 1104
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b:I

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

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->e:Ljava/lang/Object;

    .line 1108
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1109
    check-cast v0, Ljava/lang/String;

    .line 1117
    :goto_0
    return-object v0

    .line 1111
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 1113
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 1114
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1115
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->e:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1117
    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 1136
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b:I

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

.method public h()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->f:Lcom/google/a/c;

    return-object v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 1146
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Lcom/avast/android/mobilesecurity/engine/internal/a/z;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->g:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    return-object v0
.end method

.method public l()Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 1

    .prologue
    .line 1298
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 1

    .prologue
    .line 1302
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1161
    iget-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->h:B

    .line 1162
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 1165
    :goto_0
    return v0

    .line 1162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1164
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->h:B

    goto :goto_0
.end method

.method public w()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1190
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->i:I

    .line 1191
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1220
    :goto_0
    return v0

    :cond_0
    move v0, v1

    move v2, v1

    .line 1196
    :goto_1
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->c:Lcom/google/a/z;

    invoke-interface {v3}, Lcom/google/a/z;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1197
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->c:Lcom/google/a/z;

    invoke-interface {v3, v0}, Lcom/google/a/z;->c(I)Lcom/google/a/c;

    move-result-object v3

    invoke-static {v3}, Lcom/google/a/e;->b(Lcom/google/a/c;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1200
    :cond_1
    add-int v0, v1, v2

    .line 1201
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1203
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1204
    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->d:J

    invoke-static {v4, v1, v2}, Lcom/google/a/e;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1207
    :cond_2
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_3

    .line 1208
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->n()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1211
    :cond_3
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_4

    .line 1212
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->f:Lcom/google/a/c;

    invoke-static {v5, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1215
    :cond_4
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 1216
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->g:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1219
    :cond_5
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->i:I

    goto :goto_0
.end method
