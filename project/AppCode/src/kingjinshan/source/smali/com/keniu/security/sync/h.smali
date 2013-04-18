.class final Lcom/keniu/security/sync/h;
.super Ljava/lang/Object;
.source "HistoryRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/keniu/security/sync/HistoryRecord;
    .locals 1
    .parameter

    .prologue
    .line 13
    new-instance v0, Lcom/keniu/security/sync/HistoryRecord;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/HistoryRecord;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/keniu/security/sync/HistoryRecord;
    .locals 1
    .parameter

    .prologue
    .line 17
    new-array v0, p0, [Lcom/keniu/security/sync/HistoryRecord;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11
    new-instance v0, Lcom/keniu/security/sync/HistoryRecord;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/HistoryRecord;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11
    new-array v0, p1, [Lcom/keniu/security/sync/HistoryRecord;

    return-object v0
.end method
