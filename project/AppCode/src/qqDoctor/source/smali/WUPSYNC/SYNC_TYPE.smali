.class public final LWUPSYNC/SYNC_TYPE;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ST_BACKUP_FAST:LWUPSYNC/SYNC_TYPE; = null

.field public static final ST_BACKUP_MERGE:LWUPSYNC/SYNC_TYPE; = null

.field public static final ST_BACKUP_OVER:LWUPSYNC/SYNC_TYPE; = null

.field public static final ST_RESTORE_FAST:LWUPSYNC/SYNC_TYPE; = null

.field public static final ST_RESTORE_MERGE:LWUPSYNC/SYNC_TYPE; = null

.field public static final ST_RESTORE_OVER:LWUPSYNC/SYNC_TYPE; = null

.field public static final ST_SYNC_ALL:LWUPSYNC/SYNC_TYPE; = null

.field public static final ST_SYNC_FAST:LWUPSYNC/SYNC_TYPE; = null

.field public static final _ST_BACKUP_FAST:I = 0xca

.field public static final _ST_BACKUP_MERGE:I = 0xcb

.field public static final _ST_BACKUP_OVER:I = 0xd7

.field public static final _ST_RESTORE_FAST:I = 0xcc

.field public static final _ST_RESTORE_MERGE:I = 0xd5

.field public static final _ST_RESTORE_OVER:I = 0xd9

.field public static final _ST_SYNC_ALL:I = 0xc9

.field public static final _ST_SYNC_FAST:I = 0xc8

.field private static __values:[LWUPSYNC/SYNC_TYPE;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LWUPSYNC/SYNC_TYPE;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LWUPSYNC/SYNC_TYPE;->$assertionsDisabled:Z

    const/16 v0, 0x8

    new-array v0, v0, [LWUPSYNC/SYNC_TYPE;

    sput-object v0, LWUPSYNC/SYNC_TYPE;->__values:[LWUPSYNC/SYNC_TYPE;

    new-instance v0, LWUPSYNC/SYNC_TYPE;

    const/16 v3, 0xc8

    const-string v4, "ST_SYNC_FAST"

    invoke-direct {v0, v2, v3, v4}, LWUPSYNC/SYNC_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/SYNC_TYPE;->ST_SYNC_FAST:LWUPSYNC/SYNC_TYPE;

    new-instance v0, LWUPSYNC/SYNC_TYPE;

    const/16 v2, 0xc9

    const-string v3, "ST_SYNC_ALL"

    invoke-direct {v0, v1, v2, v3}, LWUPSYNC/SYNC_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/SYNC_TYPE;->ST_SYNC_ALL:LWUPSYNC/SYNC_TYPE;

    new-instance v0, LWUPSYNC/SYNC_TYPE;

    const/4 v1, 0x2

    const/16 v2, 0xca

    const-string v3, "ST_BACKUP_FAST"

    invoke-direct {v0, v1, v2, v3}, LWUPSYNC/SYNC_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/SYNC_TYPE;->ST_BACKUP_FAST:LWUPSYNC/SYNC_TYPE;

    new-instance v0, LWUPSYNC/SYNC_TYPE;

    const/4 v1, 0x3

    const/16 v2, 0xcb

    const-string v3, "ST_BACKUP_MERGE"

    invoke-direct {v0, v1, v2, v3}, LWUPSYNC/SYNC_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/SYNC_TYPE;->ST_BACKUP_MERGE:LWUPSYNC/SYNC_TYPE;

    new-instance v0, LWUPSYNC/SYNC_TYPE;

    const/4 v1, 0x4

    const/16 v2, 0xd7

    const-string v3, "ST_BACKUP_OVER"

    invoke-direct {v0, v1, v2, v3}, LWUPSYNC/SYNC_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/SYNC_TYPE;->ST_BACKUP_OVER:LWUPSYNC/SYNC_TYPE;

    new-instance v0, LWUPSYNC/SYNC_TYPE;

    const/4 v1, 0x5

    const/16 v2, 0xcc

    const-string v3, "ST_RESTORE_FAST"

    invoke-direct {v0, v1, v2, v3}, LWUPSYNC/SYNC_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/SYNC_TYPE;->ST_RESTORE_FAST:LWUPSYNC/SYNC_TYPE;

    new-instance v0, LWUPSYNC/SYNC_TYPE;

    const/4 v1, 0x6

    const/16 v2, 0xd5

    const-string v3, "ST_RESTORE_MERGE"

    invoke-direct {v0, v1, v2, v3}, LWUPSYNC/SYNC_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/SYNC_TYPE;->ST_RESTORE_MERGE:LWUPSYNC/SYNC_TYPE;

    new-instance v0, LWUPSYNC/SYNC_TYPE;

    const/4 v1, 0x7

    const/16 v2, 0xd9

    const-string v3, "ST_RESTORE_OVER"

    invoke-direct {v0, v1, v2, v3}, LWUPSYNC/SYNC_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/SYNC_TYPE;->ST_RESTORE_OVER:LWUPSYNC/SYNC_TYPE;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LWUPSYNC/SYNC_TYPE;->__T:Ljava/lang/String;

    iput-object p3, p0, LWUPSYNC/SYNC_TYPE;->__T:Ljava/lang/String;

    iput p2, p0, LWUPSYNC/SYNC_TYPE;->__value:I

    sget-object v0, LWUPSYNC/SYNC_TYPE;->__values:[LWUPSYNC/SYNC_TYPE;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LWUPSYNC/SYNC_TYPE;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LWUPSYNC/SYNC_TYPE;->__values:[LWUPSYNC/SYNC_TYPE;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LWUPSYNC/SYNC_TYPE;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LWUPSYNC/SYNC_TYPE;->__values:[LWUPSYNC/SYNC_TYPE;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LWUPSYNC/SYNC_TYPE;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LWUPSYNC/SYNC_TYPE;->__values:[LWUPSYNC/SYNC_TYPE;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)LWUPSYNC/SYNC_TYPE;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LWUPSYNC/SYNC_TYPE;->__values:[LWUPSYNC/SYNC_TYPE;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LWUPSYNC/SYNC_TYPE;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LWUPSYNC/SYNC_TYPE;->__values:[LWUPSYNC/SYNC_TYPE;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LWUPSYNC/SYNC_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LWUPSYNC/SYNC_TYPE;->__values:[LWUPSYNC/SYNC_TYPE;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LWUPSYNC/SYNC_TYPE;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LWUPSYNC/SYNC_TYPE;->__value:I

    return v0
.end method
