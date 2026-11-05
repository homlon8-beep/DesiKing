.class public Lcom/facebook/ads/internal/i/e/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/i/e/c/b$b;
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/internal/i/e/c/b$b;",
        "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
        "<",
        "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/ads/internal/i/e/c/b;

.field private b:Lcom/facebook/ads/internal/i/e/c/b$c;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/i/e/c/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/internal/i/e/c/a;->g:I

    iput-object p2, p0, Lcom/facebook/ads/internal/i/e/c/a;->c:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/c/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/internal/i/e/c/a;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/internal/i/e/c/a;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/facebook/ads/internal/i/e/c/a;->a:Lcom/facebook/ads/internal/i/e/c/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/i/e/c/b$c;)V
    .locals 3

    iput-object p1, p0, Lcom/facebook/ads/internal/i/e/c/a;->b:Lcom/facebook/ads/internal/i/e/c/b$c;

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/c/a;->e:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;

    invoke-direct {v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/i/e/c/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/e/c/a;->a(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/e/c/a;->onSingleManifestError(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V
    .locals 12

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    iget v6, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->type:I

    if-ne v6, v5, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    move v0, v1

    move v1, v3

    :goto_1
    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v6, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->type:I

    if-nez v6, :cond_4

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    move v0, v1

    move v1, v3

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    if-nez v3, :cond_3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/e/c/a;->onSingleManifestError(Ljava/io/IOException;)V

    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    iget v3, p0, Lcom/facebook/ads/internal/i/e/c/a;->g:I

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    new-instance v11, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/c/a;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/facebook/ads/internal/i/e/c/a;->a:Lcom/facebook/ads/internal/i/e/c/b;

    invoke-direct {v11, v1, v3}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v3, p0, Lcom/facebook/ads/internal/i/e/c/a;->a:Lcom/facebook/ads/internal/i/e/c/b;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/i/e/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/internal/i/e/c/a;->f:Ljava/lang/String;

    invoke-direct {v1, v3, v11, v4}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/exoplayer/dash/DashChunkSource;

    iget-object v3, p0, Lcom/facebook/ads/internal/i/e/c/a;->a:Lcom/facebook/ads/internal/i/e/c/b;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/i/e/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v2}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->newVideoInstance(Landroid/content/Context;ZZ)Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;

    invoke-direct {v3, v11}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;-><init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    invoke-direct {v4, p1, v2, v1, v3}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    new-instance v3, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget v1, p0, Lcom/facebook/ads/internal/i/e/c/a;->g:I

    mul-int/lit16 v1, v1, 0xc8

    invoke-direct {v3, v4, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;I)V

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    iget-object v2, p0, Lcom/facebook/ads/internal/i/e/c/a;->a:Lcom/facebook/ads/internal/i/e/c/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/e/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const-wide/16 v6, 0x1388

    iget-object v8, p0, Lcom/facebook/ads/internal/i/e/c/a;->c:Landroid/os/Handler;

    iget-object v9, p0, Lcom/facebook/ads/internal/i/e/c/a;->a:Lcom/facebook/ads/internal/i/e/c/b;

    const/16 v10, 0x32

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v3, p0, Lcom/facebook/ads/internal/i/e/c/a;->a:Lcom/facebook/ads/internal/i/e/c/b;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/i/e/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/internal/i/e/c/a;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v11, v4}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/exoplayer/dash/DashChunkSource;

    invoke-static {}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->newAudioInstance()Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    move-result-object v4

    new-instance v5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;

    invoke-direct {v5, v11}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;-><init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    invoke-direct {v3, p1, v4, v2, v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    new-instance v2, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget v4, p0, Lcom/facebook/ads/internal/i/e/c/a;->g:I

    mul-int/lit8 v4, v4, 0x36

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;I)V

    new-instance v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v3, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/i/e/c/a;->b:Lcom/facebook/ads/internal/i/e/c/b$c;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/internal/i/e/c/b$c;->a(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;)V

    goto/16 :goto_2

    :cond_4
    move v0, v1

    move v1, v3

    goto/16 :goto_1
.end method

.method public synthetic onSingleManifest(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/i/e/c/a;->a(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V

    return-void
.end method

.method public onSingleManifestError(Ljava/io/IOException;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/c/a;->b:Lcom/facebook/ads/internal/i/e/c/b$c;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/i/e/c/b$c;->a(Ljava/lang/Exception;)V

    return-void
.end method
