.class public final enum Lcom/avg/tuneup/battery/widget/b;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/avg/widget/model/plugin/a;


# static fields
.field public static final enum a:Lcom/avg/tuneup/battery/widget/b;

.field public static final enum b:Lcom/avg/tuneup/battery/widget/b;

.field public static final enum c:Lcom/avg/tuneup/battery/widget/b;

.field public static final enum d:Lcom/avg/tuneup/battery/widget/b;

.field public static final enum e:Lcom/avg/tuneup/battery/widget/b;

.field public static final enum f:Lcom/avg/tuneup/battery/widget/b;

.field public static final enum g:Lcom/avg/tuneup/battery/widget/b;

.field public static final enum h:Lcom/avg/tuneup/battery/widget/b;

.field public static final enum i:Lcom/avg/tuneup/battery/widget/b;

.field public static final enum j:Lcom/avg/tuneup/battery/widget/b;

.field private static final synthetic n:[Lcom/avg/tuneup/battery/widget/b;


# instance fields
.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/avg/tuneup/battery/widget/b;

    const-string v1, "FULL"

    sget v3, Lcom/avg/a/d;->widget_battery_100_discharging:I

    const/16 v4, 0x4c

    const/16 v5, 0x64

    invoke-direct/range {v0 .. v5}, Lcom/avg/tuneup/battery/widget/b;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/avg/tuneup/battery/widget/b;->a:Lcom/avg/tuneup/battery/widget/b;

    new-instance v3, Lcom/avg/tuneup/battery/widget/b;

    const-string v4, "PARTIAL"

    sget v6, Lcom/avg/a/d;->widget_battery_70_discharging:I

    const/16 v7, 0x33

    const/16 v8, 0x4b

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/avg/tuneup/battery/widget/b;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/avg/tuneup/battery/widget/b;->b:Lcom/avg/tuneup/battery/widget/b;

    new-instance v3, Lcom/avg/tuneup/battery/widget/b;

    const-string v4, "HALF"

    sget v6, Lcom/avg/a/d;->widget_battery_50_discharging:I

    const/16 v7, 0x24

    const/16 v8, 0x32

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/avg/tuneup/battery/widget/b;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/avg/tuneup/battery/widget/b;->c:Lcom/avg/tuneup/battery/widget/b;

    new-instance v3, Lcom/avg/tuneup/battery/widget/b;

    const-string v4, "LOW"

    sget v6, Lcom/avg/a/d;->widget_battery_30_discharging:I

    const/16 v7, 0x10

    const/16 v8, 0x23

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/avg/tuneup/battery/widget/b;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/avg/tuneup/battery/widget/b;->d:Lcom/avg/tuneup/battery/widget/b;

    new-instance v3, Lcom/avg/tuneup/battery/widget/b;

    const-string v4, "CRITICAL"

    sget v6, Lcom/avg/a/d;->widget_battery_15_discharging:I

    const/16 v8, 0xf

    move v5, v12

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/avg/tuneup/battery/widget/b;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/avg/tuneup/battery/widget/b;->e:Lcom/avg/tuneup/battery/widget/b;

    new-instance v3, Lcom/avg/tuneup/battery/widget/b;

    const-string v4, "FULL_CHARGING"

    const/4 v5, 0x5

    sget v6, Lcom/avg/a/d;->widget_battery_100_charging:I

    const/16 v7, 0x4c

    const/16 v8, 0x64

    invoke-direct/range {v3 .. v8}, Lcom/avg/tuneup/battery/widget/b;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/avg/tuneup/battery/widget/b;->f:Lcom/avg/tuneup/battery/widget/b;

    new-instance v3, Lcom/avg/tuneup/battery/widget/b;

    const-string v4, "PARTIAL_CHARGING"

    const/4 v5, 0x6

    sget v6, Lcom/avg/a/d;->widget_battery_70_charging:I

    const/16 v7, 0x33

    const/16 v8, 0x4b

    invoke-direct/range {v3 .. v8}, Lcom/avg/tuneup/battery/widget/b;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/avg/tuneup/battery/widget/b;->g:Lcom/avg/tuneup/battery/widget/b;

    new-instance v3, Lcom/avg/tuneup/battery/widget/b;

    const-string v4, "HALF_CHARGING"

    const/4 v5, 0x7

    sget v6, Lcom/avg/a/d;->widget_battery_50_charging:I

    const/16 v7, 0x24

    const/16 v8, 0x32

    invoke-direct/range {v3 .. v8}, Lcom/avg/tuneup/battery/widget/b;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/avg/tuneup/battery/widget/b;->h:Lcom/avg/tuneup/battery/widget/b;

    new-instance v3, Lcom/avg/tuneup/battery/widget/b;

    const-string v4, "LOW_CHARGING"

    const/16 v5, 0x8

    sget v6, Lcom/avg/a/d;->widget_battery_30_charging:I

    const/16 v7, 0x10

    const/16 v8, 0x23

    invoke-direct/range {v3 .. v8}, Lcom/avg/tuneup/battery/widget/b;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/avg/tuneup/battery/widget/b;->i:Lcom/avg/tuneup/battery/widget/b;

    new-instance v3, Lcom/avg/tuneup/battery/widget/b;

    const-string v4, "CRITICAL_CHARGING"

    const/16 v5, 0x9

    sget v6, Lcom/avg/a/d;->widget_battery_15_charging:I

    const/16 v8, 0xf

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/avg/tuneup/battery/widget/b;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/avg/tuneup/battery/widget/b;->j:Lcom/avg/tuneup/battery/widget/b;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/avg/tuneup/battery/widget/b;

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->a:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->b:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v9

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->c:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v10

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->d:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v11

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->e:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/avg/tuneup/battery/widget/b;->f:Lcom/avg/tuneup/battery/widget/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avg/tuneup/battery/widget/b;->g:Lcom/avg/tuneup/battery/widget/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avg/tuneup/battery/widget/b;->h:Lcom/avg/tuneup/battery/widget/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avg/tuneup/battery/widget/b;->i:Lcom/avg/tuneup/battery/widget/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avg/tuneup/battery/widget/b;->j:Lcom/avg/tuneup/battery/widget/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avg/tuneup/battery/widget/b;->n:[Lcom/avg/tuneup/battery/widget/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/avg/tuneup/battery/widget/b;->k:I

    iput p4, p0, Lcom/avg/tuneup/battery/widget/b;->l:I

    iput p5, p0, Lcom/avg/tuneup/battery/widget/b;->m:I

    return-void
.end method

.method public static a(IZ)Lcom/avg/tuneup/battery/widget/b;
    .locals 5

    invoke-static {p1}, Lcom/avg/tuneup/battery/widget/b;->a(Z)[Lcom/avg/tuneup/battery/widget/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/avg/tuneup/battery/widget/b;->m:I

    if-gt p0, v4, :cond_0

    iget v4, v0, Lcom/avg/tuneup/battery/widget/b;->l:I

    if-lt p0, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/avg/tuneup/battery/widget/b;->f:Lcom/avg/tuneup/battery/widget/b;

    goto :goto_1
.end method

.method private static a(Z)[Lcom/avg/tuneup/battery/widget/b;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/avg/tuneup/battery/widget/b;

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->j:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->i:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->h:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->g:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->f:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v6

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/avg/tuneup/battery/widget/b;

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->e:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->d:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->c:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->b:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avg/tuneup/battery/widget/b;->a:Lcom/avg/tuneup/battery/widget/b;

    aput-object v1, v0, v6

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avg/tuneup/battery/widget/b;
    .locals 1

    const-class v0, Lcom/avg/tuneup/battery/widget/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/battery/widget/b;

    return-object v0
.end method

.method public static values()[Lcom/avg/tuneup/battery/widget/b;
    .locals 1

    sget-object v0, Lcom/avg/tuneup/battery/widget/b;->n:[Lcom/avg/tuneup/battery/widget/b;

    invoke-virtual {v0}, [Lcom/avg/tuneup/battery/widget/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avg/tuneup/battery/widget/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/avg/tuneup/battery/widget/b;->k:I

    return v0
.end method
